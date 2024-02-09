CREATE PROCEDURE PuntiDecurtatiPerDAta
    @dataViolazione DATE
AS
BEGIN
    SELECT SUM(DecurtamentoPunti) AS tot_punti
    FROM VERBALE
    WHERE DataViolazione = @dataViolazione;
END;