event_inherited();
typ = 3;
image_speed = 0.4
dmg = 4;
if UberCont.ultramodSwap
{
	dir = 0;
	var um = GetPlayerUltramod()
	if um == ultramods.bloodExplosionExplosion
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
	else if um == ultramods.bloodMelee
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
}
else
{
	dir = random(360)
	repeat(5)
	{
	with instance_create(x,y,Smoke)
	motion_add(other.dir,3+random(1))
	dir += 360/6
	}
	if instance_exists(Player)
	{
		if Player.ultra_got[16]//Doomed melting
			dmg=6;
	}
	snd_play(sndMeatExplo,0.1,true)
	BackCont.shake += 6
}
team = 2

HumphryHit=0;//unassigned 0=miss 1=hit 2=dont count as either
Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;