CREATE DATABASE examtl1
GO
USE examtl1
GO

CREATE TABLE Empleado (
    IdEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    Apellidos VARCHAR(255),
    Nombres VARCHAR(255),
    Edad INT CHECK (Edad >= 18),
    Sexo CHAR(1) CHECK (Sexo IN ('M', 'F')),
    Salario DECIMAL(10, 2) CHECK (Salario >= 1500 AND Salario <= 2500)
)
GO

INSERT INTO Empleado (Apellidos, Nombres, Edad, Sexo, Salario) VALUES
('TORRES', 'JOSE', 22, 'M', 1500),
('GARCIA', 'MARIA', 21, 'F', 1750),
('FLORES', 'JUAN', 22, 'M', 1850),
('CASAS', 'ANA', 23, 'F', 2000)
GO

DELIMITER //
CREATE PROCEDURE ListarEmpleados()
BEGIN
    SELECT * FROM Empleado;
END //
DELIMITER ;

