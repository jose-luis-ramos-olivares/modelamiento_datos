CREATE TABLE departamento(id_depto SERIAL PRIMARY KEY, nombre_depto VARCHAR(30) NOT NULL);
CREATE TABLE trabajador(id_trabajador SERIAL PRIMARY KEY, rut_trabajador VARCHAR(20) NOT NULL, nombre_trabajador VARCHAR(30) NOT NULL, direccion_trabajador VARCHAR(50) NOT NULL, id_depto INT NOT NULL REFERENCES departamento (id_depto));
CREATE TABLE liquidacion(id_liquidacion SERIAL PRIMARY KEY, id_trabajador INT NOT NULL REFERENCES trabajador (id_trabajador), drive VARCHAR NOT NULL);
