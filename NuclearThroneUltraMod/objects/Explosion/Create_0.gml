image_speed = 0.4
depth = 1;
scrWeaponModInit();
dmg = 5;
myExplosionMask = noone;
myScorchMark = noone;
moodAmount = 1;
var um = GetPlayerUltramod()
if um == ultramods.bloodExplosionExplosion && UberCont.ultramodSwap
{
	mask_index = mskPickupThroughWall;
	mask_index = mskPickupThroughWall;
	visible = false;
	alarm[11] = 1;
}
else
{
	image_angle = random(360);
	//seperate mask for players
	myExplosionMask = instance_create(x,y,ExplosionMask);
	with myExplosionMask {
		owner = other.id;
	}
	ang = random(360)
	var angstep = 90;
	repeat (4)
	{
	with instance_create(x,y,Smoke)
	motion_add(other.ang,2.5)
	ang += angstep;
	}
	ang = random(360)
	repeat(4)
	{
	with instance_create(x,y,Dust)
	motion_add(other.ang,6)
	ang += angstep;
	}
	if BackCont.shake < 20
		BackCont.shake += 7
}

team = -1
wepFire = -1;
isVenomized = 0;
if instance_exists(Player) {
	if Player.ultra_got[57]
	{
		dmg += 2;
	}
	if Player.skill_got[14]
		alarm[3] = 1;
	if object_index == Explosion {
		if Player.ultra_got[57]//atom bomb
		{
			//BIGGER EXPLOSIONS
			alarm[2] = irandom_range(1,4);
		}
		scrCrownOfDeath();
	}
	if Player.skill_got[14]
	{
		alarm[6] = 10;
		if Player.ultra_got[97]
		{
			moodAmount += 1;
		}
	}
}
motion_add(random(360),0.1);
alarm[0]=3;




