# Carga de datos en base de datos

/*===================================
========== CARGA TABLA BANCO
===================================*/
LOAD DATA INFILE '/var/lib/mysql-files/bancos.csv'
INTO TABLE banco
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(banco);

/*===================================
========== CARGA TABLA PERFIL_FINANCIERO
===================================*/
insert into perfil_financiero(perfil_f) values('ACTIVO');   # id: 1
insert into perfil_financiero(perfil_f) values('PASIVO');   # id: 2
insert into perfil_financiero(perfil_f) values('CAPITAL');  # id: 3

create temporary table temp(
    banco varchar(100),
    perfil varchar(100),
    fecha date,
    monto float
);

/*===================================
========== CARGA TABLA temp
===================================*/
LOAD DATA INFILE '/var/lib/mysql-files/bancos_data.csv'
INTO TABLE temp
COLUMNS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(BANCO,MONTO,PERFIL,FECHA);

/*===================================
========== CARGA TABLA PERFIL_FINANCIERO_BANCOS 
===================================*/
insert into perfil_financiero_bancos (cod_banco,cod_pefil_financiero,fecha,monto) (
    select id_banco, id_perfil, temp.fecha , temp.monto from banco, perfil_financiero, temp
    where temp.banco = banco.banco
    and perfil_financiero.perfil_f = temp.perfil
);

/*===================================
========== CARGA VISTA RANKING 
===================================*/
create view Ranking as select banco banco, monto monto, month(fecha) mes, year(fecha) anio,
rank () over (
partition  by month(fecha),year(fecha) order by monto desc
) ranking
from perfil_financiero_bancos,banco
where cod_pefil_financiero = 1
and id_banco = cod_banco;


/*===================================
========== CARGA VISTA RANKING 
===================================*/
insert into usuario(username,pwd) values('user1','user1');
insert into usuario(username,pwd) values('user2','user2');
