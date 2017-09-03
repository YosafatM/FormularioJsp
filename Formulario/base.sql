create database LaJaiba;

USE LaJaiba;

create table LosDatos (
	IdDatito int(3) auto_increment,
	Nombre varchar(50),
    ElApellidoPat varchar(50),
    ElApellidoMat varchar(50),
    Scul varchar(100),
    primary key(IdDatito)
);
show tables;
describe LosDatos;