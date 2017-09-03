create database Formulario;

USE Formulario;

create table Datos (
	idPersona int(3) auto_increment,
	Nombre varchar(50),
    ElApellidoPat varchar(50),
    ElApellidoMat varchar(50),
    Escuela varchar(100),
    primary key(idPersona)
);
show tables;
describe Datos;
select *from Datos;
show databases;
delete from Datos;
drop table Datos;