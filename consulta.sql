-- =====================
-- CONSULTAS SOLICITADAS
-- =====================

-- 1. Todos los usuarios
SELECT * FROM usuario;

-- 2. Vehículos con su propietario
SELECT v.*, u.nombre FROM vehiculo v
JOIN usuario u ON v.usuario_id_usuario = u.id_usuario;

-- 3. Entradas al parqueadero
SELECT e.fecha, e.hora, v.placa FROM entrada e
JOIN vehiculo v ON e.vehiculo_id_vehiculo = v.id_vehiculo;

-- 4. Salidas del parqueadero
SELECT s.fecha, s.hora, v.placa FROM salida s
JOIN vehiculo v ON s.vehiculo_id_vehiculo = v.id_vehiculo;

-- 5. Vehículos restringidos por día (ejemplo Lunes)
SELECT COUNT(*) AS total_restringidos
FROM vehiculo v
JOIN pico_y_placa p ON v.pico_y_placa_id_pico_placa = p.id_pico_placa
WHERE p.dia_semana = 'Lunes';
