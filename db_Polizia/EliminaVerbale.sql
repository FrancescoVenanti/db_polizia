CREATE PROCEDURE EliminaVerbale
    @idVerbale INT
AS
BEGIN
    DELETE FROM VERBALE
    WHERE IdVerbale = @idVerbale;
END;