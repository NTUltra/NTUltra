/// @description Can we revive?
if myCorpse != -1 && instance_exists(myCorpse) && instance_number(enemy) - instance_number(IDPDVan) > 6 
{
	visible = true;
	image_index = 0;
	image_speed = 0.4;
	x = myCorpse.x;
	y = myCorpse.y;
	snd_play(sndFreakPopoReviveArea);
}
else
{
	instance_destroy();	
}
