CREATE PROCEDURE VerbaliPerAnno
    @anno INT
AS
BEGIN
    SELECT ANAGRAFICA.Cognome, ANAGRAFICA.Nome, VERBALE.IndirizzoViolazione, VERBALE.DataViolazione, VERBALE.Importo, VERBALE.DecurtamentoPunti
    FROM VERBALE
    INNER JOIN ANAGRAFICA ON VERBALE.IdAnagrafica = ANAGRAFICA.idanagrafica
    WHERE YEAR(VERBALE.DataViolazione) = @anno;
END;