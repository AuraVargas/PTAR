-- Crear base de datos para la planta del PTAR
use master
GO
use [master]
go
IF EXISTS (SELECT * FROM sysdatabases WHERE (name = 'PTAR')) 
	drop database PTAR;
go
create database PTAR;
go
use PTAR;
go
-- Crear tabla para el usuario
create table Usuarios
(
ID int primary key not null,
Contrasena varchar(40)not null,
Telefono int unique not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Email varchar(50) unique not null,
Rol varchar(20)check(rol in('Funcionario','Ayudante')) not null
)
go
-- Crear tabla de agenda
create table agenda
(
CodigoE int primary key not null,
Fecha date,
Descripcion varchar(300),
Estado varchar(30) check(Estado in('Activo','Cancelado')) not null,
Titulo varchar(50) not null,
horaInicio time,
horaFin time,
IdU int,
color int
constraint FK_Agenda_IdU foreign key (IdU) References Usuarios(ID)
)
go


--Crear tabla Representante
create table Representante
(
IDRepresentante int primary key not null,
Correo varchar(50) not null,
Nombre varchar(50) not null,
telefono int not null)
--Crear tabla Empresa
create table Empresa
(
NIT int primary key not null,
IDEnc int not null,
Nombre varchar(100),
constraint FK_Empresa_Representante foreign key (IDEnc) references Representante(IDRepresentante)
)
--Crear tabla visitas
create table Visitas
(
codigoV int identity(0,1) primary key not null,
NumeroPersonas int,
Encargado int not null,
CodiA int,
IDempresa int,
constraint FK_Visitas_agenda foreign key (codiA) References Agenda(Codigoe),
constraint FK_Visitas_empresa foreign key (IDempresa) References empresa(NIT)
)
go
create view visitasCom
as
select v.codigoV, v.numeropersonas,v.CodiA,e.NIT,a.Estado,e.nombre as 'nombreEmp',r.IDRepresentante,
r.Nombre,r.Correo,r.telefono,a.fecha as 'fecha',
convert(char(5), a.horaInicio, 108)as'horaInicio',
convert(char(5), a.horaFin, 108)as'horaFin'
from 
visitas v inner join empresa e on v.IDempresa = e.NIT 
inner join Representante r on e.IDEnc = r.IDRepresentante
inner join agenda a on v.CodiA = a.codigoe

GO

--Creacion de procesos almacenados
insert into Usuarios values(12345,'1234',304522909,'Alexandra','Barriga','aurayorleny@gmail.com','Funcionario')
insert into Usuarios values(13,'1234',45678,'Aura','Vargas','a@gmail.com','Ayudante')

go
create PROC Inicio
@EMAIL varchar(30),
@PASS varchar(40)
as
select * from Usuarios where Email=@EMAIL AND Contrasena = @PASS
go
--Consultar contraseña con correo
create proc adviseWith
@EMAIL varchar(30)
as
select * from Usuarios where Email = @EMAIL
go
--Volver al estado original la contraseña para ser cambiada
create proc recoverPassword
@Email varchar(30)
as
update Usuarios
set Contrasena = ID
where @Email = Email
go
--Cambiar la contraseña 
create proc upPassword
@Id int,
@Contrasena varchar(40)
as
update Usuarios
set Contrasena = @Contrasena
where ID = @Id
go
create proc crearUsu
@Id int,
@Contrasena int,
@Telefono int,
@Nombre varchar(50),
@Apellido varchar(50),
@Email varchar(50),
@Rol varchar(20)
as
insert into Usuarios values(@Id,@Contrasena,@Telefono, @Nombre,@Apellido, @Email, @Rol)
go

create proc actulizarUsu
@ID int,
@Contrasena varchar(40),
@Telefono int,
@Nombre varchar(50),
@Apellido varchar(50),
@Email varchar(50),
@Rol varchar(20)
as
update Usuarios
set Contrasena = @Contrasena, Telefono = @Telefono, Nombre = @Nombre,Apellido = @Apellido, Email = @Email, Rol = @Rol
where ID = @ID
go

create proc consultarUsu
@ID int
as
select * from Usuarios
where ID = @ID
go

create proc borrarUsu
@ID int
as
delete from Usuarios
where ID = @ID
go

--agenda
create proc registraragenda
@code int,
@Fecha varchar(10),
@Descripcion varchar(300),
@Estado varchar(30),
@Titulo varchar(50),
@horaInicio time,
@horaFin time,
@IdU int,
@color int
as
insert into agenda values(@code,@Fecha,@Descripcion,@Estado,@Titulo,@horaInicio,@horaFin,@IdU,@color)

go

create proc actualizaragenda
@Fecha varchar(10),
@Descripcion varchar(300),
@Estado varchar(30),
@Titulo varchar(50),
@horaInicio time,
@horaFin time,
@codigoa int
as
update agenda set Fecha=@Fecha, Descripcion = @Descripcion, Estado=@estado, Titulo=@Titulo,horaInicio = @horaInicio, horaFin=@horaFin where CodigoE=@codigoa

GO
create proc actualizarcolor
@color int,
@fecha date
as
update agenda set color=@color where Fecha= @fecha

GO
select * from agenda
go
create proc consultaragenda
@codigoe int
as
select codigoE, fecha, Descripcion, Estado, Titulo,
convert(char(5), horaInicio, 108)as'horaInicio',
convert(char(5),horaFin, 108)as'horaFin',
idu
from agenda where codigoe= @codigoe

GO

create proc consultaragendaFecha
@fecha date
as
select * from agenda where Fecha= @fecha

GO

create proc consultaragendaHora
@horaInicio time,
@horaFin time,
@fecha date,
@codigoe int
as
select * from agenda where 
horaInicio >= @horaInicio and horaInicio <= @horaFin and fecha = @fecha and codigoe != @codigoe
or horaFin >= @horaInicio and horaFin <= @horaFin and fecha = @fecha and codigoe != @codigoe
or horaInicio <= @horaInicio and horaFin >= @horaFin and fecha = @fecha and codigoe != @codigoe
go

create proc eliminaragenda
@codigoe int
as
delete from visitas where codia=@codigoe
delete agenda where codigoe= @codigoe

GO

--visitas
CREATE proc registrarvisitas
@NumeroPersonas int,
@Encargado int,
@CodiA int,
@empresa int
as
insert into visitas values
(@NumeroPersonas,@Encargado,@CodiA,@empresa)

GO

create proc actualizarvisitas 
@NumeroPersonas int,
@Encargado int,
@CodiA int,
@empresa int,
@codigov int
as
update Visitas set NumeroPersonas=@numeropersonas, 
Encargado = @Encargado, CodiA=@codia, IDempresa=@empresa
 where codigoV=@codigov

GO

create proc consultarvisitas
@codigov int
as
select * from Visitas where codigoV= @codigov

GO
create proc consultaEspvisita
@codigov int
as
select * from Visitascom where codigoV =@codigov


GO

create proc eliminarvisitas
@codigov int
as
delete Visitas where codigoV= @codigov

GO
--encargado
CREATE proc registrarrepresentante
@IDRepresentante int,
@Correo varchar(50),
@Nombre varchar(50),
@telefono int
as
insert into Representante values
(@idrepresentante,@correo,@nombre,@telefono)

GO

create proc actualizarrepresentante
@IDRepresentante int,
@Correo varchar(50),
@Nombre varchar(50),
@telefono int
as
update Representante set Correo=@Correo, Nombre = @Nombre, 
telefono=@telefono where IDRepresentante=@IDRepresentante

GO

create proc consultarrepresentante
@IDrepresentante int
as
select * from Representante where IDRepresentante= @IDrepresentante

GO

create proc eliminarrepresentante
@IDrepresentante int
as
delete Representante where IDRepresentante= @IDrepresentante

GO

--empresa
create proc registrarempresa
@NIT int,
@IDEnc int,
@nombre varchar(100)
as
insert into Empresa values
(@nit,@IDEnc,@nombre)

GO

create proc actualizarempresa
@NIT int,
@nombre varchar(100)
as
update empresa set 
nombre=@nombre where NIT=@NIT

GO

create proc consultarempresa
@nit int
as
select * from Empresa where NIT= @nit

GO

create proc eliminarempresa
@nit int
as
delete Empresa where NIT= @nit

GO

create trigger eliminarva
on visitas
for delete
as
delete agenda where codigoe=(select codia from deleted)
go

select * from Usuarios