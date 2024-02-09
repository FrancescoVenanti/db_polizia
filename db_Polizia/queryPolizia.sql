
--ES 1 
--Select count(*) AS N_VERBALI from VERBALE

--ES 2
--SELECT IdAnagrafica, COUNT(*) AS N_VERBALI_PER_PERSONA FROM VERBALE GROUP BY IdAnagrafica

--es 3
--SELECT idViolazione, COUNT(*) AS N_VERBALI_PER_VIOLAZIONE FROM VERBALE GROUP BY idViolazione

--es4
--select idAnagrafica, sum(DecurtamentoPunti) as tot_punti_decurtati from verbale group by idAnagrafica

--es 5 
/*
select Cognome, Nome, DataViolazione, IndirizzoViolazione, importo, DecurtamentoPunti
from VERBALE 
inner join 
ANAGRAFICA on
VERBALE.idAnagrafica = ANAGRAFICA.idanagrafica
where Città = 'Palermo'
*/

--es 6
/*
select Cognome, Nome, DataViolazione, IndirizzoViolazione, importo, DecurtamentoPunti
from VERBALE 
inner join 
ANAGRAFICA on
VERBALE.idAnagrafica = ANAGRAFICA.idanagrafica
where DataViolazione between '2009-02-01' and '2009-07-01'
*/

--es 7
/*
select Cognome, Nome, sum(Importo) as tot_dovuto
from VERBALE 
inner join 
ANAGRAFICA on
VERBALE.idAnagrafica = ANAGRAFICA.idanagrafica
group by ANAGRAFICA.Cognome, ANAGRAFICA.Nome
*/

--es 8
--select * from ANAGRAFICA where Città = 'Palermo'

--es 9
/*
DECLARE @data_violazione DATE = '2007-01-01'; 

SELECT DataViolazione, Importo, DecurtamentoPunti
FROM VERBALE
WHERE DataViolazione = @data_violazione;
*/

--es 10
/*
select NominativoAgente, count(idViolazione) as n_verbali
from verbale
group by NominativoAgente
*/

--es 11
/*
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
FROM VERBALE 
INNER JOIN ANAGRAFICA ON
VERBALE.IdAnagrafica = ANAGRAFICA.idanagrafica
WHERE VERBALE.DecurtamentoPunti > 5;
*/

--es 12
/*
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
FROM VERBALE 
INNER JOIN ANAGRAFICA ON
VERBALE.IdAnagrafica = ANAGRAFICA.idanagrafica
WHERE VERBALE.Importo > 400;
*/

