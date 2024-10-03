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
	if instance_exists(IDPDVan)
		numEn -= instance_number(IDPDVan);
	if numEn < 2
	{
		alarm[0] = 1;
	}
}