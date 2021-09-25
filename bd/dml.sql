USE sistemaX;

SELECT * FROM usuarios;

SELECT * FROM eventos;

INSERT INTO eventos (idEvento, nombre, comunidad, fechaInicio, fechaFinal, idUsuario) 
VALUES (1, 'XGames', 'Tula de Allende', '2018-10-22', '2018-11-15', 1);

DELETE FROM eventos WHERE idEvento = 0;

SELECT MAX(idEvento) FROM eventos;

UPDATE eventos SET nombre = '', comunidad = '', fechaInicio = '', fechaFinal = '', idUsuario = 0 WHERE idEvento = 0;