use TestDB

CREATE TABLE departamento(
    idDepartamento int not null primary key,
    nombre NVARCHAR(30)
)

CREATE TABLE empleado(
    idEmpleado int not null primary key,
    nombre NVARCHAR(50),
    apellidos NVARCHAR(50),
    trabajaEn int foreign key references departamento(idDepartamento)
)