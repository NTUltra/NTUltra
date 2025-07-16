/// @description If enemies are dead can go in
var numEn = 0;
with enemy
{
	if team != 2
		numEn ++;
}
if instance_exists(IDPDVan)
	numEn -= instance_number(IDPDVan);
if numEn == 0 &&
(!instance_exists(becomenemy) and 
!instance_exists(Menu) and !instance_exists(RadMaggotChest) and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(UltraIcon))
{
	image_index = 2;
	name = "ENTER VOID?";
}
else
{
	image_index = 1;
	alarm[2] = 15;
}