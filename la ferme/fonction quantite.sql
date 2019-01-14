Delimiter $$
CREATE FUNCTION quantite(elevage int, plante varchar(45))
returns int
deterministic
BEGIN
declare nb int;
SELECT a.qtx into nb from alimentation a
INNER JOIN plante pl ON a.fkplante = pl.idplante
INNER JOIN animal an ON a.fkanimal = an.idanimal
INNER JOIN elevage e ON e.fkanimal = an.idanimal
WHERE e.idelevage = elevage AND pl.nom = plante;
return nb;
END 
$$
