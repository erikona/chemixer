create database chemixer;
use chemixer;
create table usuarios(
idUser int primary key,
nombreU varchar(35) ,
edad int ,
escolaridad varchar(30) ,
email varchar(30),
password varchar(30),
idRegistro int
);
create table registro(
idRegistro int primary key,
elementos varchar(3000) ,
foreign key(idRegistro) references usuarios(idUser)
);
create table componentes (
idComp int primary key ,
nombreC varchar(30),
imagen varchar(30),
descr varchar(30)
);
create table combinaciones(
idComb int primary key ,
combArray varchar(3000),
idElemRes int, 
foreign key(idElemRes) references componentes(idComp)
);