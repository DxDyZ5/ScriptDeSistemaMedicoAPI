CREATE DATABASE SistemaMedicoAPI;
USE SistemaMedicoAPI;

CREATE TABLE Medicos (
    IdMedico INT IDENTITY(1,1) PRIMARY KEY,
    NombreMed NVARCHAR(40),
    Exequatur NVARCHAR(20),
    Especialidad NVARCHAR(30)
);

CREATE TABLE Pacientes (
    IdPaciente INT IDENTITY(1,1) PRIMARY KEY,
    Cedula NVARCHAR(15),
    NombrePac NVARCHAR(40),
    Asegurado BIT
);

CREATE TABLE Habitaciones (
    IdHabitacion INT IDENTITY(1,1) PRIMARY KEY,
    Numero INT,
    Tipo NVARCHAR(20),
    PrecioPorDia DECIMAL(10, 2) not null	
);

CREATE TABLE Citas (
    IdCita INT IDENTITY(1,1) PRIMARY KEY,
    IdPaciente INT,
    IdMedico INT,
    FechaCitaHora DATETIME not null
);

CREATE TABLE Ingresos (
    IdIngreso INT IDENTITY(1,1) PRIMARY KEY,
    IdPaciente INT,
    IdHabitacion INT,
    FechaInicioInter DATE not null
);

CREATE TABLE Altas (
    IdAlta INT IDENTITY(1,1) PRIMARY KEY,
    IdIngreso INT,
    FechaSalida DATE not null,
    MontoPagar DECIMAL(10, 2) not null
);




--resetear conteo identity
DBCC CHECKIDENT(Citas, RESEED, 3);




--vista asegurado
SELECT Cedula, NombrePac, 
       CASE WHEN Asegurado = 1 THEN 'Seguro' ELSE 'Sin seguro' END AS Asegurado
FROM Pacientes;







--select verifico
select * from Medicos	
select * from Pacientes

select * from Ingresos

select * from Altas

select * from Habitaciones

select * from Citas




delete from Altas
where column = id