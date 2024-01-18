event_inherited();
typ = 3;
image_speed = 0.4
dmg = 4;
destroyAll = false;
motion_add(random(360),0.1);
if instance_exists(Player) && Player.ultra_got[74] && Player.altUltra
{
	destroyAll = true;
}
if UberCont.ultramodSwap
{
	dir = 0;
	var um = GetPlayerUltramod()
	if um == ultramods.bloodExplosionExplosion
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
		if instance_exists(Player) && Player.ultra_got[57]
		{
			//FIERY EXPLOSIONS
			alarm[1]=9;
		}
	}
	else if um == ultramods.bloodMelee
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
	else if scrIsCrown(3)
	{
		alarm[3] = 6;
	}
}
if visible && object_index != SmallMeatExplosion
{
	dir = random(360)
	var step = 360/3;
	repeat(3)
	{
	with instance_create(x,y,Smoke)
	motion_add(other.dir,3+random(1))
	dir += step;
	}
	if instance_exists(Player)
	{
		if Player.ultra_got[16]//Doomed melting
			dmg=6;
	}
	snd_play(sndMeatExplo,0.1,true)
	BackCont.shake += max(1,3 - (BackCont.shake*0.1))
}
team = 2
alarm[2] = 1;