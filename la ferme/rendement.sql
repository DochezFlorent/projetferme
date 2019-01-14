select quantite / capacite, idelevage, nom
from productionviande
INNER JOIN elevage on idelevage = fkelevage
INNER JOIN animal on idanimal = fkanimal
