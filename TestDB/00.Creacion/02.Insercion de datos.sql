use TestDB

insert into departamento
    (idDepartamento, nombre)
    VALUES
    (1,'Sistemas'),
    (2,'Producción'),
    (3,'Ventas')

insert into departamento
    (idDepartamento, nombre)
    values (4, 'Mercadotecnia')

insert into empleado
    (idEmpleado, nombre, apellidos, trabajaEn, sexo)
    values
    (1,'Felipe','Zamudio',1,'H')

insert into proveedor
    (nombre, rfc, direccion)
    VALUES
    ('Casa sin Ley','CSL920501FRE','Por ahí')