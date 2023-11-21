/* Borrar BD */
drop database DB_LaborLane;

/* Crear BD */
create database DB_LaborLane;

/* Activar y/o usar BD */
use DB_LaborLane;

-- ********************************************************************** --
-- ********************************************************************** --

/****************** Tabla rol ******************/

create table rol(
IdRol int(11) primary key auto_increment,
NombreRol char(20) not null
);

-- FK_IdRol int, foreign key(FK_IdRol) REFERENCES rol(IdRol)

/****** Insert Into's tabla rol ******/

insert into rol (NombreRol) values ('Administrador');
insert into rol (NombreRol) values ('Empleado');
insert into rol (NombreRol) values ('Empleador');

/****** Ver tabla rol ******/
select * from rol;

/****************** Tabla barrio ******************/

create table barrio(
IdBarrio int(11) primary key auto_increment,
ZonaResidencia enum('Usaquén', 'Chapinero', 'Santa Fe', 'San Cristóbal', 'Usme', 'Tunjuelito', 'Bosa',
'Kennedy', 'Fontibón', 'Engativá', 'Suba', 'Barrios Unidos', 'Teusaquillo', 'Los Mártires', 'Antonio Nariño',
'Puente Aranda', 'La Candelaria', 'Rafael Uribe Uribe', 'Ciudad Bolívar') not null,
NombreBarrio varchar(30)
);
-- FK_IdBarrio int, foreign key(FK_IdBarrio) REFERENCES barrio(IdBarrio)

/****** Insert Into's tabla barrio ******/

insert into barrio (ZonaResidencia, NombreBarrio) values (10, 'Las Ferias');
insert into barrio (ZonaResidencia, NombreBarrio) values (11,'La Gaitana');
insert into barrio (ZonaResidencia, NombreBarrio) values (9, 'Versalles');
insert into barrio (ZonaResidencia, NombreBarrio) values (10, 'Bonanza');
insert into barrio (ZonaResidencia, NombreBarrio) values (11, 'Bilbao');

/****** Ver tabla barrio ******/
select * from barrio;

/****************** Tabla categoriaOficios ******************/

create table categoriaOficios(
IdCategoria int(11) primary key auto_increment,
NombreCategoria char(30) not null
-- conecta con habilidades
);
-- FK_IdCategoria int, foreign key(FK_IdCategoria) REFERENCES categoriaOficios(IdCategoria)

/****** Insert Into's tabla categoriaOficios ******/

insert into categoriaOficios (NombreCategoria) values ('Pintores');
insert into categoriaOficios (NombreCategoria) values ('Constructores');
insert into categoriaOficios (NombreCategoria) values ('Plomeros');
insert into categoriaOficios (NombreCategoria) values ('Electricistas');
insert into categoriaOficios (NombreCategoria) values ('Carpinteros');

/****** Ver tabla categoriaOficios ******/
select * from categoriaOficios;

/****************** Tabla usuario ******************/

create table usuario(
IdUsuario int(11) primary key auto_increment,
NombresUsuario char(30) not null,
PrimerApellidoUsuario char(30) not null,
SegundoApellidoUsuario char(30) not null,
GeneroUsuario enum('masculino', 'femenino', 'otro genero'),
NombreEmpresa char(30),
TipoDocumentoUsuario enum('Targeta de Identidad', 'Cedula de Ciudadania', 'Cedula de Extranjeria', 
'Numero de Identificacion Tributaria') not null,
NumeroDocumentoUsuario int(12) unique not null,
FechaNacimiento date,
CelularUsuario varchar(15) not null,
Celular2Usuario varchar(15),
DireccionUsuario char(35) not null,
EstratoResidencia enum('Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis', 'No estratificado') not null,
CorreoUsuario char(25),
ContraseñaUsuario char(30) unique not null,
EstadoCivil enum('indiferente', 'soltero', 'casado', 'union libre', 'separado', 'viudo')not null,
PersonasACargo int(2) not null,
LibretaMilitar enum('no tiene', 'libreta de primera', 'libreta de segunda') not null,
ContenidoPerfil varchar(500) not null,
EstadoUsuario enum('activo', 'inactivo'),
FK_IdRol int, foreign key(FK_IdRol) REFERENCES rol(IdRol),
FK_IdBarrio int, foreign key(FK_IdBarrio) REFERENCES barrio(IdBarrio)
);
-- FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario)

/****** Insert Into's tabla usuario ******/

insert into usuario (NombresUsuario, PrimerApellidoUsuario, SegundoApellidoUsuario, GeneroUsuario, NombreEmpresa, TipoDocumentoUsuario, NumeroDocumentoUsuario,
FechaNacimiento, CelularUsuario, Celular2Usuario, DireccionUsuario, EstratoResidencia, CorreoUsuario, ContraseñaUsuario, EstadoCivil, PersonasACargo,
LibretaMilitar, ContenidoPerfil, EstadoUsuario, FK_IdRol, FK_IdBarrio) values ('Santiago Manuel', 'Arias', 'Beltrán', 'Masculino', 'Mercados S.A.S', 2, 1099233321, '1892-03-02', 
'322352691', '346897654', 'Cll 500 #45 - 67', 2, 'manue1223@gmail.com', 'Lunes-9000...', 'Soltero', 3, 1, 'Lorem ipsum dolor sit amet consectetur adipiscing elit dis, 
cum vivamus posuere cubilia hendrerit torquent eget senectus, ultrices tempor a molestie erat magna penatibus.', 1, 1, 1);

insert into usuario (NombresUsuario, PrimerApellidoUsuario, SegundoApellidoUsuario, GeneroUsuario, NombreEmpresa, TipoDocumentoUsuario, NumeroDocumentoUsuario,
FechaNacimiento, CelularUsuario, Celular2Usuario, DireccionUsuario, EstratoResidencia, CorreoUsuario, ContraseñaUsuario, EstadoCivil, PersonasACargo,
LibretaMilitar, ContenidoPerfil, EstadoUsuario, FK_IdRol, FK_IdBarrio) values ('Saira Yaneth', 'Jimenez', 'Rodriguez', 'Femenino', 'Compu. Corp', 2, 1846381204, '1999-06-12', 
'372041753', '311294243', 'Cll 600 #09 - 09', 5, 'Saira777@gmail.com', 'Martes-83732...', 'Soltero', 5, 2, 'Odio senectus lacus sociis tellus dictumst arcu ornare nisi montes, blandit condimentum porta eget 
ultricies diam molestie velit gravida praesent, vivamus habitasse aenean potenti cubilia sed phasellus in.', 1, 2, 3);

insert into usuario (NombresUsuario, PrimerApellidoUsuario, SegundoApellidoUsuario, GeneroUsuario, NombreEmpresa, TipoDocumentoUsuario, NumeroDocumentoUsuario,
FechaNacimiento, CelularUsuario, Celular2Usuario, DireccionUsuario, EstratoResidencia, CorreoUsuario, ContraseñaUsuario, EstadoCivil, PersonasACargo,
LibretaMilitar, ContenidoPerfil, EstadoUsuario, FK_IdRol, FK_IdBarrio) values ('Juan Camilo', 'Gonzalez', 'Gomez', 'Masculino', 'Empresa #01 S.A.S', 2, 176522312, '2000-12-31', 
'335291612', '300744355', 'Cll 099 #13 - 02', 2, 'hola033@gmail.com', 'Miercoles-8632...', 'Casado', 1, 3, 'Parturient donec malesuada cum volutpat integer netus, pharetra in taciti nascetur scelerisque 
suspendisse, sollicitudin elementum justo cras congue.',2 , 2, 3);

insert into usuario (NombresUsuario, PrimerApellidoUsuario, SegundoApellidoUsuario, GeneroUsuario, NombreEmpresa, TipoDocumentoUsuario, NumeroDocumentoUsuario,
FechaNacimiento, CelularUsuario, Celular2Usuario, DireccionUsuario, EstratoResidencia, CorreoUsuario, ContraseñaUsuario, EstadoCivil, PersonasACargo,
LibretaMilitar, ContenidoPerfil, EstadoUsuario, FK_IdRol, FK_IdBarrio) values ('Carlos Sebastian', 'Guzman', 'Lopez', 'Masculino', 'Empresa Bonita S.A.S', 2, 1887231557, '1999-07-24', 
'389991125', '300941186', 'Cll A #77 - 21', 1, 'mañana23@gmail.com', 'Jueves-886221...', 'Soltero', 3, 1, 'Eget ultrices leo erat nec tempor risus convallis vivamus, magna imperdiet platea iaculis nullam 
dis massa, porttitor vehicula mollis lacus conubia nisl magnis.',1 , 3, 4);

insert into usuario (NombresUsuario, PrimerApellidoUsuario, SegundoApellidoUsuario, GeneroUsuario, NombreEmpresa, TipoDocumentoUsuario, NumeroDocumentoUsuario,
FechaNacimiento, CelularUsuario, Celular2Usuario, DireccionUsuario, EstratoResidencia, CorreoUsuario, ContraseñaUsuario, EstadoCivil, PersonasACargo,
LibretaMilitar, ContenidoPerfil, EstadoUsuario, FK_IdRol, FK_IdBarrio) values ('Karol Daniela', 'Jimenez', 'Diaz', 'Femenino', 'Otra Empresa. Corp.', 2, 1865544313, '1890-05-01', 
'344336713', '3099986412', 'Cll No #09 - 12', 3, 'claaro30@gmail.com', 'Viernes-66171...', 'Viudo', 0, 2, 'Mollis sodales malesuada ultrices luctus laoreet ligula praesent mauris quam bibendum elementum 
tristique parturient sociis, etiam tempus sapien facilisis nascetur faucibus sociosqu nisl gravida lacinia nibh congue sed',2, 1, 5);

/****** Ver tabla usuario ******/
select * from usuario;

/****************** Tabla habilidades ******************/

create table habilidades(
IdHabilidad int(11) primary key auto_increment,
NombreHabilidad char(30),
DescipcionHabilidad varchar(200),
FK_IdCategoria int, foreign key(FK_IdCategoria) REFERENCES categoriaOficios(IdCategoria)
);
-- FK_IdHabilidad int, foreign key(FK_IdHabilidad) REFERENCES habilidades(IdHabilidad)

/****** Insert Into's tabla habilidades ******/

insert into habilidades (NombreHabilidad, DescipcionHabilidad, FK_IdCategoria) values ('Plomero', 'Descipcion #1', 3);
insert into habilidades (NombreHabilidad, DescipcionHabilidad, FK_IdCategoria) values ('Carpintero', 'Descipcion #2', 5);
insert into habilidades (NombreHabilidad, DescipcionHabilidad, FK_IdCategoria) values ('Electricista', 'Descipcion #3', 4);
insert into habilidades (NombreHabilidad, DescipcionHabilidad, FK_IdCategoria) values ('Constructor', 'Descipcion #4', 2);
insert into habilidades (NombreHabilidad, DescipcionHabilidad, FK_IdCategoria) values ('Pintor', 'Descipcion #5', 1);

/****** Ver tabla habilidades ******/
select * from habilidades;

/****************** Tabla nivelHabilidad ******************/

create table nivelHabilidad(
IdNivel int(11) primary key auto_increment,
Nivel enum('principiante', 'nivel medio', 'experto'),
FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario),
FK_IdHabilidad int, foreign key(FK_IdHabilidad) REFERENCES habilidades(IdHabilidad)
);
-- FK_IdNivelHabilidad int, foreign key(FK_IdNivelHabilidad) REFERENCES nivelHabilidad(IdNivelHabilidad)

/****** Insert Into's tabla nivelHabilidad ******/

insert into nivelHabilidad (Nivel, FK_IdUsuario, FK_IdHabilidad) values (1, 3, 5);
insert into nivelHabilidad (Nivel, FK_IdUsuario, FK_IdHabilidad) values (3, 5, 3);
insert into nivelHabilidad (Nivel, FK_IdUsuario, FK_IdHabilidad) values (2, 2, 1);
insert into nivelHabilidad (Nivel, FK_IdUsuario, FK_IdHabilidad) values (1, 1, 2);
insert into nivelHabilidad (Nivel, FK_IdUsuario, FK_IdHabilidad) values (2, 4, 4);

/****** Ver tabla nivelHabilidad ******/
select * from nivelHabilidad;

/****************** Tabla educacion ******************/

create table educacion(
IdEducacion int(11) primary key auto_increment,
NombreInstitucion char(30),
TituloEducacion char(30),
NivelAcademico char(30),
FechaInicio date,
FechaFin date,
FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario)
);
-- FK_IdEducacion int, foreign key(FK_IdEducacion) REFERENCES educacion(IdEducacion)

/****** Insert Into's tabla educacion ******/

insert into educacion (NombreInstitucion, TituloEducacion, NivelAcademico, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Escuela #01 I.E.D', 'Bachillerato', 'Bachiller Tecnico', '1980-03-02', '1991-08-02', 3);

insert into educacion (NombreInstitucion, TituloEducacion, NivelAcademico, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Escuela #02', 'Bachillerato', 'Bachiller Tecnico', '2020-12-31', '2031-09-11', 5);

insert into educacion (NombreInstitucion, TituloEducacion, NivelAcademico, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Escuela #03 I.E.D', 'Bachillerato', 'Bachiller Tecnico', '2000-08-06', '2011-12-02', 2);

insert into educacion (NombreInstitucion, TituloEducacion, NivelAcademico, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Escuela #04', 'Bachillerato', 'Bachiller', '2021-05-12', '2032-02-28', 1);

insert into educacion (NombreInstitucion, TituloEducacion, NivelAcademico, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Escuela #05 I.E.D', 'Bachillerato', 'Bachiller Tecnico', '2013-10-10', '2024-11-16', 4);

/****** Ver tabla educacion ******/
select * from educacion;

/****************** Tabla experiencia ******************/

create table experiencia(
IdExperiencia int(11) primary key auto_increment,
NombreEmpleador char(30) not null,
Cargo char(30) not null,
Funciones varchar(500) not null,
Logros varchar(500),
FechaInicio date not null,
FechaFin date not null,
FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario)
);
-- FK_IdExperiencia int, foreign key(FK_IdExperiencia) REFERENCES experiencia(IdExperiencia)

/****** Insert Into's tabla experiencia ******/

insert into experiencia (NombreEmpleador, Cargo, Funciones, Logros, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Juan Velazquez Ortiz', 'Jefe', 'Administrar', 'Plata', '2020-02-02', '2021-07-01', 3);

insert into experiencia (NombreEmpleador, Cargo, Funciones, Logros, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Nombre #2', 'Manager', 'Supervisar', 'Ser bonito', '2020-02-02', '2021-07-01', 2);

insert into experiencia (NombreEmpleador, Cargo, Funciones, Logros, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Nombre #3', 'Sub Jefe', 'Administrar', 'Juicioso', '2023-12-01', '2025-07-12', 4);

insert into experiencia (NombreEmpleador, Cargo, Funciones, Logros, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Nombre #4', 'Ayudante', 'Monitorear', 'Bueno en todo', '2024-02-28', '2024-05-01', 5);

insert into experiencia (NombreEmpleador, Cargo, Funciones, Logros, FechaInicio, FechaFin, FK_IdUsuario) 
values ('Nombre #5', 'Jefe', 'Administrar', 'Con plata', '2025-12-24', '2025-12-31', 1);

/****** Ver tabla experiencia ******/
select * from experiencia;

/****************** Tabla referencias ******************/

create table referencias(
IdReferencia int(11) primary key auto_increment,
NombreReferencia char(30) not null,
EmpresaReferencia char(30),
CargoReferencia char(30),
CorreoReferencia char(30) not null,
CelularReferencia char(15) not null,
FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario)
);
-- FK_IdReferencia int, foreign key(FK_IdReferencia) REFERENCES referencias(IdReferencia)

/****** Insert Into's tabla referencias ******/

insert into referencias (NombreReferencia, EmpresaReferencia, CargoReferencia, CorreoReferencia, CelularReferencia, FK_IdUsuario) 
values ('Referencia #1', 'Empresa Bonita S.A.S', 'Pintor', 'un correo1@gmail.com', 348476298, 3);

insert into referencias (NombreReferencia, EmpresaReferencia, CargoReferencia, CorreoReferencia, CelularReferencia, FK_IdUsuario) 
values ('Referencia #2', 'Empresa #2 Corp.', 'Electricista', 'un correo2@gmail.com', 309872112, 5);

insert into referencias (NombreReferencia, EmpresaReferencia, CargoReferencia, CorreoReferencia, CelularReferencia, FK_IdUsuario) 
values ('Referencia #3', 'Piano Corp', 'Plomero', 'un correo3@gmail.com', 362876556, 2);

insert into referencias (NombreReferencia, EmpresaReferencia, CargoReferencia, CorreoReferencia, CelularReferencia, FK_IdUsuario) 
values ('Referencia #4', 'Empresa #4', 'Artista', 'un correo4@gmail.com', 330112739, 1);

insert into referencias (NombreReferencia, EmpresaReferencia, CargoReferencia, CorreoReferencia, CelularReferencia, FK_IdUsuario) 
values ('Referencia #5', 'Empresa $5', 'Tecnico en sistemas', 'un correo5@gmail.com', 3900864186, 4);

/****** Ver tabla referencias ******/
select * from referencias;

/****************** Tabla OfertaEmpleo ******************/

create table OfertaEmpleo(
IdEmpleo int(11) primary key auto_increment,
TituloEmpleo char(30) not null,
DescripcionEmpleo varchar(500) not null,
RequisitosEmpleo varchar(500) not null,
HabilidadesEmpleo varchar(200),
FechaPublicacion date not null,
FechaVencimiento date not null,
EstadoOferta enum('Activa', 'Inactiva') not null,
FK_IdCategoria int, foreign key(FK_IdCategoria) REFERENCES categoriaOficios(IdCategoria),
FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario)
);
-- FK_IdEmpleo int, foreign key(FK_IdEmpleo) REFERENCES OfertaEmpleo(IdEmpleo)

/****** Insert Into's tabla OfertaEmpleo ******/

insert into OfertaEmpleo (TituloEmpleo, DescripcionEmpleo, RequisitosEmpleo, HabilidadesEmpleo, FechaPublicacion, FechaVencimiento, EstadoOferta,
FK_IdCategoria, FK_IdUsuario) 
values ('Pintor', 'Pintar la casa', 'Experiencia', 'Pintar bien', '2099-09-09', 
'2100-02-02',  1, 3, 5);

insert into OfertaEmpleo (TituloEmpleo, DescripcionEmpleo, RequisitosEmpleo, HabilidadesEmpleo, FechaPublicacion, FechaVencimiento, EstadoOferta,
FK_IdCategoria, FK_IdUsuario) 
values ('Electricista', 'Arreglar la luz', 'Experiencia 2 años',
'No cortar el cable incorrecto', '2023-10-11', '2022-10-12', 2, 1, 4);

insert into OfertaEmpleo (TituloEmpleo, DescripcionEmpleo, RequisitosEmpleo, HabilidadesEmpleo, FechaPublicacion, FechaVencimiento, EstadoOferta,
FK_IdCategoria, FK_IdUsuario) 
values ('Artista', 'Hacerme un cuadro de pintura', 'Experiencia, pintar bien', 
'Pintar bien', '2099-09-09', '2100-02-02', 1, 2, 2);

insert into OfertaEmpleo (TituloEmpleo, DescripcionEmpleo, RequisitosEmpleo, HabilidadesEmpleo, FechaPublicacion, FechaVencimiento, EstadoOferta,
FK_IdCategoria, FK_IdUsuario) 
values ('Plomero', 'Arreglar el tubo de mi casa', 'Mucha experiencia',
'Arreglarme el tubo correcto', '2023-03-01', '2024-12-31', 2, 5, 1);

insert into OfertaEmpleo (TituloEmpleo, DescripcionEmpleo, RequisitosEmpleo, HabilidadesEmpleo, FechaPublicacion, FechaVencimiento, EstadoOferta,
FK_IdCategoria, FK_IdUsuario) 
values ('Limpiador', 'Limpiar mi casita', 'Experiencia de 4 años',
'Limpiar bien', '2023-06-30', '2025-01-01', 1, 4, 3);

/****** Ver tabla OfertaEmpleo ******/
select * from OfertaEmpleo;

/****************** Tabla aplicaciones ******************/

create table aplicaciones(
IdAplicaciones int(11) primary key auto_increment,
FechaAplicacion date not null,
ValorSugerido float not null,
EstadoAplicacion enum('pendiente', 'rechazada', 'admitida', 'finalizada') not null,
FK_IdEmpleo int, foreign key(FK_IdEmpleo) REFERENCES OfertaEmpleo(IdEmpleo),
FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario)
);
-- FK_IdAplicaciones int, foreign key(FK_IdAplicaciones) REFERENCES aplicaciones(IdAplicaciones)

/****** Insert Into's tabla aplicaciones ******/

insert into aplicaciones (FechaAplicacion, ValorSugerido, EstadoAplicacion, FK_IdEmpleo, FK_IdUsuario)
values ('2024-03-02', 10.000,'Pendiente', 1, 1);

insert into aplicaciones (FechaAplicacion, ValorSugerido, EstadoAplicacion, FK_IdEmpleo, FK_IdUsuario)
values ('2024-05-12', 50.000, 'Rechazada', 2, 2);

insert into aplicaciones (FechaAplicacion, ValorSugerido, EstadoAplicacion, FK_IdEmpleo, FK_IdUsuario)
values ('2024-12-09', 20.000, 'Admitida', 3, 3);

insert into aplicaciones (FechaAplicacion, ValorSugerido, EstadoAplicacion, FK_IdEmpleo, FK_IdUsuario)
values ('2024-12-02', 15.000, 'Finalizada', 4, 4);

insert into aplicaciones (FechaAplicacion, ValorSugerido, EstadoAplicacion, FK_IdEmpleo, FK_IdUsuario)
values ('2024-08-30', 30.000, 'Pendiente', 5, 5);

/****** Ver tabla aplicaciones ******/
select * from aplicaciones;

/****************** Tabla TrabajoRealizado ******************/

create table TrabajoRealizado(
IdTrabajo int(11) primary key auto_increment,
FechaInicioTrabajo date not null,
FechaFinTrabajo date not null,
MontoPago float not null,
FechaPago date not null,
MetodoPago enum('Nequi', 'Banco Virtual') not null,
FK_IdAplicaciones int, foreign key(FK_IdAplicaciones) REFERENCES aplicaciones(IdAplicaciones)
);
-- FK_IdTrabajo int, foreign key(FK_IdTrabajo) REFERENCES Realizado(IdTrabajo)

/****** Insert Into's tabla TrabajoRealizado ******/

insert into TrabajoRealizado (FechaInicioTrabajo, FechaFinTrabajo, MontoPago, FechaPago, MetodoPago, FK_IdAplicaciones)
values ('2024-09-29', '2024-10-02', 40.000, '2025-05-01', 1, 1);

insert into TrabajoRealizado (FechaInicioTrabajo, FechaFinTrabajo, MontoPago, FechaPago, MetodoPago, FK_IdAplicaciones)
values ('2024-09-29', '2024-10-02', 50.000, '2025-06-12', 1, 2);

insert into TrabajoRealizado (FechaInicioTrabajo, FechaFinTrabajo, MontoPago, FechaPago, MetodoPago, FK_IdAplicaciones)
values ('2024-09-29', '2024-10-02', 60.000, '2025-07-30', 1, 3);

insert into TrabajoRealizado (FechaInicioTrabajo, FechaFinTrabajo, MontoPago, FechaPago, MetodoPago, FK_IdAplicaciones)
values ('2024-09-29', '2024-10-02', 100.000, '2025-08-10', 1, 4);

insert into TrabajoRealizado (FechaInicioTrabajo, FechaFinTrabajo, MontoPago, FechaPago, MetodoPago, FK_IdAplicaciones)
values ('2024-09-29', '2024-10-02', 20.000, '2025-09-20', 1, 5);

/****** Ver tabla TrabajoRealizado ******/
select * from TrabajoRealizado;

/****************** Tabla mensajes ******************/

create table mensajes(
IdMensaje int(11) primary key auto_increment,
FechaMensaje dateTime not null,
HoraMensaje time not null,
ContenidoMensaje varchar(500) not null,
FK_IdUsuario int, foreign key(FK_IdUsuario) REFERENCES usuario(IdUsuario),
FK_IdTrabajo int, foreign key(FK_IdTrabajo) REFERENCES TrabajoRealizado(IdTrabajo)
);
-- FK_IdMensaje int, foreign key(FK_IdMensaje) REFERENCES mensajes(IdMensaje)

/****** Insert Into's tabla mensajes ******/

insert into mensajes (FechaMensaje, HoraMensaje, ContenidoMensaje, FK_IdUsuario, FK_IdTrabajo)
values ('2023-05-02', '14:30:00', 'Contratado', 3, 1);

insert into mensajes (FechaMensaje, HoraMensaje, ContenidoMensaje, FK_IdUsuario, FK_IdTrabajo)
values ('2023-09-12', '15:06:30', 'No me gusto el trabajo', 2, 2);

insert into mensajes (FechaMensaje, HoraMensaje, ContenidoMensaje, FK_IdUsuario, FK_IdTrabajo)
values ('2023-12-12', '24:05:12', 'Despedido', 4, 3);

insert into mensajes (FechaMensaje, HoraMensaje, ContenidoMensaje, FK_IdUsuario, FK_IdTrabajo)
values ('2024-05-17', '10:10:10', 'Ya le pagué', 1, 4);

insert into mensajes (FechaMensaje, HoraMensaje, ContenidoMensaje, FK_IdUsuario, FK_IdTrabajo)
values ('2024-04-30', '12:04:31', 'Mañana', 5, 5);

/****** Ver tabla mensajes ******/
select * from mensajes;

/****************** Tabla evaluacion ******************/

create table evaluacion(
IdEvaluacion int(11) primary key auto_increment,
FechaEvaluacion date not null,
PuntajeEvaluacion int(100) not null,
ObservacionesEvaluacion varchar(500),
FK_IdTrabajo int, foreign key(FK_IdTrabajo) REFERENCES TrabajoRealizado(IdTrabajo)
);
-- FK_IdEvaluacion int, foreign key(FK_IdEvaluacion) REFERENCES evaluacion(IdEvaluacion)

/****** Insert Into's tabla evaluacion ******/

insert into evaluacion (FechaEvaluacion, PuntajeEvaluacion, ObservacionesEvaluacion, FK_IdTrabajo)
values ('2024-05-06', 50, 'Regular', 1);

insert into evaluacion (FechaEvaluacion, PuntajeEvaluacion, ObservacionesEvaluacion, FK_IdTrabajo)
values ('2023-12-24', 100, 'Buen puntaje, feliz navidad', 2);

insert into evaluacion (FechaEvaluacion, PuntajeEvaluacion, ObservacionesEvaluacion, FK_IdTrabajo)
values ('2025-03-12', 40, 'Mal', 3);

insert into evaluacion (FechaEvaluacion, PuntajeEvaluacion, ObservacionesEvaluacion, FK_IdTrabajo)
values ('2023-02-28', 80, 'Mejorar', 4);

insert into evaluacion (FechaEvaluacion, PuntajeEvaluacion, ObservacionesEvaluacion, FK_IdTrabajo)
values ('2024-04-30', 100, 'Muy bien', 5);

/****** Ver tabla evaluacion ******/
select * from evaluacion;





