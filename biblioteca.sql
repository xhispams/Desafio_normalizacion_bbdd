-- CREAR BASE DE DATOS
    CREATE DATABASE biblioteca;

--CREAR TABLAS
    --LIBROS
    CREATE TABLE libros(codigo INT, nombre VARCHAR(100) NOT NULL, PRIMARY KEY(codigo));

    --AUTORES
    CREATE TABLE autores(id SERIAL, nombre VARCHAR(100) NOT NULL, PRIMARY KEY(id));

    --EDITORIALES
    CREATE TABLE editoriales(id SERIAL, nombre VARCHAR(100) NOT NULL, PRIMARY KEY(id));

    --LECTORES
    CREATE TABLE lectores(id SERIAL, nombre VARCHAR(100) NOT NULL, PRIMARY KEY(id));

    --PRESTAMOS
    CREATE TABLE prestamos(id SERIAL, fecha_devolucion DATE NOT NULL, libro_cod INT NOT NULL, lector_id INT NOT NULL, PRIMARY KEY(id), FOREIGN KEY(libro_cod) REFERENCES libros(codigo), FOREIGN KEY(lector_id) REFERENCES lectores(id));

    --AUTORES_LIBROS
    CREATE TABLE autores_libros(libro_cod INT, autor_id INT, FOREIGN KEY(libro_cod) REFERENCES libros(codigo), FOREIGN KEY(autor_id) REFERENCES autores(id));

    --EDITORIALES_LIBROS
    CREATE TABLE editoriales_libros(libro_cod INT UNIQUE, editorial_id INT, FOREIGN KEY(libro_cod) REFERENCES libros(codigo), FOREIGN KEY(editorial_id) REFERENCES editoriales(id));