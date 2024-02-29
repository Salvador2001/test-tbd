use TestDB

CREATE TABLE departamento(
    idDepartamento int not null primary key,
    nombre NVARCHAR(30)
)

CREATE TABLE empleado(
    idEmpleado int not null primary key,
    nombre NVARCHAR(50),
    apellidos NVARCHAR(50),
    trabajaEn int foreign key references departamento(idDepartamento),
    sexo char check (sexo in ('M','H'))
)

create table proveedor(
    idProveedor int not null primary key identity,
    nombre nvarchar(60) not null,
    rfc char(13) not null,
    direccion NVARCHAR(250) not null
)

alter table proveedor
    add CONSTRAINT rfc_unico UNIQUE (rfc)

delete proveedor 
    where rfc = 'CSL920501FRE'