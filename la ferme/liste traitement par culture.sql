select produit.nom, traitement.qtx
from produit
inner join traitement on produit.idproduit = traitement.fkproduit
inner join culture on traitement.fkculture = culture.idculture
Order by idculture

