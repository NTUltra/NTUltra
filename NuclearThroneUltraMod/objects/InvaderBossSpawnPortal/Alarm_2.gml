/// @description Start sooner
if alarm[0] > 1
{
	alarm[2] = 1;
	var numEn = 0;
	with enemy
	{
		if team != 2
			numEn ++;
	}
	if numEn == 0 || (instance_exists(IDPDVan) && numEn == instance_number(IDPDVan))
	{
		alarm[0] = 1;
	}
}