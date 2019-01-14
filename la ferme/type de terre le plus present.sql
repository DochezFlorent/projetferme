select type_terre.nom, terrain.surface
from type_terre
inner join terrain on idtype_terre = fktype_terre
order by terrain.surface DESC
limit 1
