# Script para la creacion de la base de datos

# Creacion de la base de datos
create database bd2py;

# Usar base de datos recien creada
use bd2py;

/*===================================
========== CREACION TABLA BANCO
===================================*/
create table banco(
    id_banco int not null AUTO_INCREMENT,
    banco varchar(100),
    constraint pk_banco primary key (id_banco)
);

/*===================================
========== CREACION TABLA PERFIL_FINANCIERO
===================================*/
create table perfil_financiero(
    id_perfil int not null AUTO_INCREMENT,
    perfil_f varchar(100),
    constraint pk_perfil_financiero primary key (id_perfil)
);

/*===================================
========== CREACION TABLA PERFIL_FINANCIERO_BANCOS
===================================*/
create table perfil_financiero_bancos(
    cod_banco int not null,
    cod_pefil_financiero int not null,
    fecha date not null,
    monto float,
    constraint pk_perfil_financiero_bancos primary key(cod_banco,cod_pefil_financiero,fecha),
    constraint fk_perfilfbancos_banco 
        foreign key(cod_banco) references banco(id_banco) on delete cascade,
    constraint fk_perfilfbancos_perfilf 
        foreign key(cod_pefil_financiero) references perfil_financiero(id_perfil) on delete cascade
);


/*===================================
========== CREACION TABLA USUARIO
===================================*/
create table usuario(
    id_usuario int not null AUTO_INCREMENT,
    username varchar(45) not null,
    pwd varchar(45),
    constraint pk_usuario primary key (id_usuario)
);