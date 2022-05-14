# Usar la base de datos correcta
use bd2pr1;

# CARGA HABITACIONES **************************************************************
# Este comando se debe correr desde workbench
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Habitaciones.csv'
INTO TABLE habitacion
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES (idHabitacion,habitacion);

# CARGA LOG_HABITACIONES **************************************************************
# Este comando se debe correr desde workbench
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/LogHabitacion.csv'
INTO TABLE log_habitacion
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES (idHabitacion,time_stamp,estado);


# CARGA PACIENTES **************************************************************
# Este comando se corre directamente desde la terminal de MYSQL,
# ademas hay que colocar el archivo en la ubicacion mostrada abajo
# Si no se hace desde la consola se tarda demasiado desde workbench
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Pacientes.csv' 
INTO TABLE paciente 
COLUMNS TERMINATED BY ';' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES (idPaciente,edad,genero);


# CARGA LOG_ACTIVIDADES **************************************************************
# Carga log_actividad No.1
# Este comando se debe correr desde workbench
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/LogActividades1.csv'
INTO TABLE log_actividad
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES (time_stamp,actividad,idHabitacion,idPaciente);

# Carga log_actividad No.2
# Este comando se debe correr desde workbench
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/LogActividades2.csv'
INTO TABLE log_actividad
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES (time_stamp,actividad,idHabitacion,idPaciente);