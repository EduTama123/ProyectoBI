-- 05_postgresql_generar_compras.sql
-- Generar 500 registros de compras (2025-2026)

SET search_path TO gestion, public;

DO $$
DECLARE
    i INTEGER := 1;
    v_fecha DATE;
    v_orden_compra VARCHAR(20);
    v_factura VARCHAR(30);
    v_lote VARCHAR(30);
    v_codigo_distribuidor VARCHAR(10);
    v_codigo_producto VARCHAR(15);
    v_cantidad_cajas INTEGER;
    v_unidades_por_caja INTEGER;
    v_precio_lista DECIMAL(10,2);
    v_descuento DECIMAL(5,2);
    v_costo_unitario DECIMAL(10,2);
    v_total DECIMAL(12,2);
    v_sucursal VARCHAR(10);
    v_estado VARCHAR(20);
    v_condicion VARCHAR(50);
    v_random INT;
    v_mes INT;
    v_anio INT;
BEGIN
    FOR i IN 1..500 LOOP
        -- Fecha aleatoria entre 2025-01-01 y 2026-12-31
        v_anio := CASE WHEN i <= 250 THEN 2025 ELSE 2026 END;
        v_mes := floor(random() * 12) + 1;
        v_fecha := (v_anio || '-' || lpad(v_mes::text, 2, '0') || '-' || lpad((floor(random() * 28) + 1)::text, 2, '0'))::DATE;
        
        -- Orden de compra
        v_orden_compra := 'OC-' || v_anio || '-' || lpad(i::text, 4, '0');
        
        -- Factura
        v_factura := 'F-D' || lpad((floor(random() * 8) + 1)::text, 3, '0') || '-' || v_anio || lpad(v_mes::text, 2, '0') || '-' || lpad((floor(random() * 9999))::text, 4, '0');
        
        -- Lote
        v_lote := 'L' || v_anio || lpad(v_mes::text, 2, '0') || '-' || lpad((floor(random() * 999))::text, 3, '0') || '-' || lpad(i::text, 4, '0');
        
        -- Distribuidor aleatorio
        SELECT codigo_distribuidor INTO v_codigo_distribuidor FROM distribuidor ORDER BY random() LIMIT 1;
        
        -- Producto aleatorio
        SELECT codigo_producto, costo_base, precio_venta INTO v_codigo_producto, v_precio_lista, v_total FROM producto_referencia ORDER BY random() LIMIT 1;
        
        -- Cantidades
        v_cantidad_cajas := floor(random() * 60) + 1;
        v_unidades_por_caja := CASE floor(random() * 6)
            WHEN 0 THEN 10
            WHEN 1 THEN 20
            WHEN 2 THEN 24
            WHEN 3 THEN 30
            WHEN 4 THEN 50
            ELSE 60
        END;
        
        -- Descuento (varía según distribuidor)
        SELECT descuento_base / 100 INTO v_descuento FROM distribuidor WHERE codigo_distribuidor = v_codigo_distribuidor;
        v_descuento := v_descuento + (random() * 0.05);
        
        -- Costo unitario neto
        v_costo_unitario := v_precio_lista * (1 - v_descuento);
        
        -- Total
        v_total := v_costo_unitario * v_cantidad_cajas * v_unidades_por_caja;
        
        -- Sucursal aleatoria
        SELECT codigo_sucursal INTO v_sucursal FROM sucursal ORDER BY random() LIMIT 1;
        
        -- Estado
        v_estado := CASE WHEN random() < 0.03 THEN 'Pendiente' ELSE 'Recibido' END;
        
        -- Condición de pago
        SELECT condicion_pago INTO v_condicion FROM distribuidor WHERE codigo_distribuidor = v_codigo_distribuidor;
        
        -- Insertar compra
        INSERT INTO compra (
            fecha_compra, orden_compra, factura_distribuidor, lote_compra,
            codigo_distribuidor, codigo_producto, cantidad_cajas, unidades_por_caja,
            cantidad_unidades, precio_lista_unitario, descuento_distribuidor,
            valor_descuento, costo_unitario_neto, total_compra_neto,
            codigo_sucursal_entrega, estado_compra, condicion_pago,
            observacion
        ) VALUES (
            v_fecha, v_orden_compra, v_factura, v_lote,
            v_codigo_distribuidor, v_codigo_producto, v_cantidad_cajas, v_unidades_por_caja,
            v_cantidad_cajas * v_unidades_por_caja, v_precio_lista, v_descuento * 100,
            v_precio_lista * v_descuento, v_costo_unitario, v_total,
            v_sucursal, v_estado, v_condicion,
            CASE WHEN random() < 0.05 THEN 'Entrega coordinada fuera de horario regular' 
                 WHEN random() < 0.03 THEN 'Descuento por volumen'
                 WHEN random() < 0.02 THEN 'Compra controlada: producto de alta rotación'
                 ELSE NULL END
        );
    END LOOP;
END $$;

-- Verificar
SELECT COUNT(*) FROM compra;
SELECT MIN(fecha_compra), MAX(fecha_compra) FROM compra;