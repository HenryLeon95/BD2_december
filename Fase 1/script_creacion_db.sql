# Creacion de la base de datos
create database bd2pr1;

# Usar base de datos recien creada
use bd2pr1;

# HABITACIONES ****************************************************************** ->
create table habitacion(
	idHabitacion int,
	habitacion varchar(60),
	constraint pk_habitacion primary key (idHabitacion)
);


# LOG_HABITACIONES ****************************************************************** ->
create table log_habitacion(
	idHabitacion int,
	time_stamp varchar(60),
	estado varchar(45),
	constraint fk_loghabitacion_habitacion foreign key (idHabitacion) references habitacion(idHabitacion) on delete cascade
);


# PACIENTES ****************************************************************** ->
create table paciente(
	idPaciente int,
	edad int,
	genero varchar(70),
	constraint pk_paciente primary key (idPaciente)
);

# LOG_ACTIVIDADES ****************************************************************** ->
create table log_actividad(
	time_stamp varchar(60),
	actividad varchar(200),
	idHabitacion int,
	idPaciente int,
	constraint fk_logactividad_habitacion foreign key (idHabitacion) references habitacion(idHabitacion) on delete cascade,
	constraint fk_logactividad_paciente foreign key (idPaciente) references paciente(idPaciente) on delete cascade
);