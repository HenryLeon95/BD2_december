# Consutas de proyecto

# CONSULTA 1
/*Mostrar los 5 primeros bancos en orden ascendente que hayan tenido el mejor punteo en el
Ranking Bancario para el mes de noviembre 2020.*/
select banco , monto, ranking from (
    select banco banco, monto monto,
    rank () over (
        partition  by month(fecha) order by monto desc
    ) ranking
    from perfil_financiero_bancos,banco
    where cod_pefil_financiero = 1
    and id_banco = cod_banco
    and month(fecha) = 11
    and year(fecha) = 2020 limit 5
)tmp order by monto asc;

# CONSULTA 2
/*Mostrar los últimos 5 bancos en orden descendente que hayan tenido el peor punteo en el
Ranking Bancario para el mes de febrero 2021.*/
select banco , monto, ranking from (
    select banco banco, monto monto,
    rank () over (
        partition  by month(fecha) order by monto desc
    ) ranking
    from perfil_financiero_bancos,banco
    where cod_pefil_financiero = 1
    and id_banco = cod_banco
    and month(fecha) = 2
    and year(fecha) = 2021 order by monto asc limit 5
)tmp order by monto desc;

# CONSULTA 3
/*Mostrar los primeros 3 bancos en orden ascendente que hayan obtenido el mejor punteo en el
Ranking Bancario en el primer semestre quiere; decir del 30/11/2020 al 30/04/2021*/
select banco,monto,
rank() over(
	partition by mes order by monto desc
) nrank
from Ranking
where mes in (11,12,1,2,3,4) and anio between 2020 and 2021
limit 3;

# CONSULTA 4
/*Mostrar al mejor banco quiere decir al banco que tenga la posición 1 en el Ranking Bancario
durante el año completo; quiere decir del 30/11/2020 al 31/10/2021.*/
select banco,monto,
rank() over(
	partition by mes order by monto desc
) nrank
from Ranking
where mes between 1 and 12 and anio between 2020 and 2021
order by monto desc limit 1;
