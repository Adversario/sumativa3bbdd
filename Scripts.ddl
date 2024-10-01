CREATE TABLE EscuelaDeportiva (
    id_escuela NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    tipo VARCHAR2(50),
    ubicacion VARCHAR2(150),
    contacto VARCHAR2(50)
);

CREATE TABLE Personal (
    id_personal NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    profesion VARCHAR2(50),
    nacionalidad VARCHAR2(50),
    id_escuela NUMBER,
    CONSTRAINT fk_escuela_personal FOREIGN KEY (id_escuela) REFERENCES EscuelaDeportiva(id_escuela)
);

CREATE TABLE Costos (
    id_costo NUMBER PRIMARY KEY,
    descripcion VARCHAR2(100),
    monto NUMBER,
    id_escuela NUMBER,
    CONSTRAINT fk_escuela_costos FOREIGN KEY (id_escuela) REFERENCES EscuelaDeportiva(id_escuela)
);