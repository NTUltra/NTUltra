event_inherited();

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1
if GetPlayerUltramod() == ultramods.krakenMelee
{
	alarm[11] = 0;//Is already kraken
	visible = true;
	mask_index = mskSlash;
}
//hit=false;
snd_wallhit=sndMeleeWall;


length = 22;