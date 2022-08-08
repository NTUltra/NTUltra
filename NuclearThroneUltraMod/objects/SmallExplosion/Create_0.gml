event_inherited();
image_speed = 1;
var um = GetPlayerUltramod()
if um == ultramods.bloodExplosionExplosion && UberCont.ultramodSwap
{
	mask_index = mskPickupThroughWall;
	visible = false;
	alarm[11] = 1;
}
else
{
	repeat(3)
	{
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(2))
	}

	ang = random(360)
	repeat(5)
	{
	with instance_create(x,y,Dust)
	motion_add(other.ang,6)

	ang += 360/20
	}
	BackCont.shake += 2;
}
team = -1
if instance_exists(Player){
	if Player.ultra_got[57]//atom bomb
	{
		instance_create(x+random(32)-16,y+random(32)-16,ExplosionStop);
		//FIERY EXPLOSIONS
		alarm[1]=9;
	}
	alarm[0] = 2;
}

dmg=4;
