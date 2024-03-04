create database ejemplo
use ejemplo

create table departamento(
    id int not null primary key,
    nombre NVARCHAR(50)
)

create table empleado(
    id int not null primary key,
    nombre NVARCHAR(80),
    -- Participación total -> not null, participación parcial -> puede ser nulo
    trabajaEn int not null
        foreign key 
        references departamento(id)
        on delete set default 999 -- cascade, set default 999
)

insert into departamento (id, nombre)
    VALUES
    (1, 'Ventas'),
    (2, 'Sistemas'),
    (3, 'RH')

insert into empleado (id, nombre, trabajaEn)
    VALUES
    (1, 'Jacinto Cenobio', 2)

insert into empleado (id, nombre, trabajaEn)
    VALUES
    (2, 'Scarlett Johanson', 1)

insert into empleado (id, nombre, trabajaEn)
    VALUES
    (3, 'Sergio El Bailador', 3)

delete departamento
    where id = 1

update empleado
    set trabajaEn = 3
    where id = 2

select * from empleado
select * from departamento

insert into departamento (id, nombre)
    VALUES
    (999, 'Sin asignar Departamento')

drop table empleado

delete departamento
    where id = 2

select * from empleado
select * from departamento

drop table empleado
drop table departamento