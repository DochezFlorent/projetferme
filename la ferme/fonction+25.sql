Delimiter $$
CREATE FUNCTION replacingId(idterrain int)
    RETURNS int
    DETERMINISTIC
BEGIN
if idterrain < 26
THEN
    update idterrain 
   set idterrain = idterrain + 25;
end if;
return idterrain;
END 
$$
