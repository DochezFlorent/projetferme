select produit.nom, traitement.qtx / terrain.surface
from produit
inner join traitement on produit.idproduit = traitement.fkproduit
inner join culture on traitement.fkculture = culture.idculture
inner join terrain on culture.fkterrain = terrain.idterrain
Order by idculture
