CREATE SCHEMA sistemaX;

USE sistemaX;

CREATE TABLE usuarios (
   idUsuario INT NOT NULL,
   usuario VARCHAR(45),
   contrasenia VARCHAR(45),
   rol INT NOT NULL,
   apePaterno VARCHAR(45),
   apeMaterno VARCHAR(45),
   nombres VARCHAR(90),
   direccion VARCHAR(250),
   latitud FLOAT(10,6),
   longitud FLOAT(10,6),
   CONSTRAINT pk_usuarios PRIMARY KEY (idUsuario),
   CONSTRAINT uq_usuarios_usuario UNIQUE (usuario)
);

INSERT INTO usuarios (idUsuario, usuario, contrasenia, rol, apePaterno, apeMaterno, nombres, direccion, latitud, longitud) 
VALUES (1, 'dan', 'dan', 0, 'Hdz', 'Grc', 'Daniel', 'Conocido', 0.0, 0.0);

CREATE TABLE eventos (
   idEvento INT NOT NULL,
   nombre VARCHAR(100),
   comunidad VARCHAR(50),
   fechaInicio DATE,
   fechaFinal DATE,
   idUsuario INT NOT NULL,
   CONSTRAINT pk_eventos PRIMARY KEY (idEvento),
   CONSTRAINT fk_eventos_usuarios FOREIGN KEY (idUsuario) REFERENCES usuarios (idUsuario)
);

INSERT INTO eventos (idEvento, nombre, comunidad, fechaInicio, fechaFinal, idUsuario) 
VALUES (1, 'XGames', 'Tula de Allende', '2018-10-22', '2018-11-15', 1);
