CREATE TABLE curso(id_curso SERIAL PRIMARY KEY, nombre_curso VARCHAR(30) NOT NULL);
CREATE TABLE alumno(id_alumno SERIAL PRIMARY KEY, rut_alumno VARCHAR(25) NOT NULL, nombre_alumno VARCHAR(40) NOT NULL, id_curso INT NOT NULL REFERENCES curso (id_curso));
CREATE TABLE departamento(id_departamento SERIAL PRIMARY KEY, nombre_departamento VARCHAR(30) NOT NULL);
CREATE TABLE profesor(id_profesor SERIAL PRIMARY KEY, nombre_profesor VARCHAR(30) NOT NULL, id_departamento INT NOT NULL REFERENCES departamento (id_departamento));
CREATE TABLE prueba(id_prueba SERIAL PRIMARY KEY, puntaje INT NOT NULL, id_profesor INT NOT NULL REFERENCES profesor (id_profesor), id_alumno INT NOT NULL REFERENCES alumno (id_alumno));
