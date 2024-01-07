/// @description Fire a big screen laser
with instance_create(target.x,y,PrepScreenLaser) {
	team = other.team;
	owner = other.id;
	originX = other.x;
	originY = other.y;
}
snd_play(sndLaserCrystalCharge)
sprite_index = spr_fire;
alarm[1] += actTime;
with UltraCrystal
{
	alarm[1] += actTime*2;
}
with UltraSniper
{
	alarm[1] += actTime;	
}
alarm[3] = 10;