image_speed = 0.4
dmg = 5;
myExplosionMask = -1;
var um = GetPlayerUltramod()
if object_index != PopoExplosion && object_index != RogueExplosion && um == ultramods.bloodExplosionExplosion && UberCont.ultramodSwap
{
	mask_index = mskPickupThroughWall;
	visible = false;
	alarm[11] = 1;
}
else
{
	//seperate mask for players
	myExplosionMask = instance_create(x,y,ExplosionMask);
	with myExplosionMask {
		owner = other.id;
	}
	repeat (4)
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(2))

	ang = random(360)
	var angstep = 360/4
	repeat(4)
	{
	with instance_create(x,y,Dust)
	motion_add(other.ang,6)
	ang += angstep;
	}
	BackCont.shake += 7
}

team = -1
if instance_exists(Player) {
	if Player.ultra_got[57]
	{
		dmg += 3;
	}
	if object_index == Explosion {
		if Player.ultra_got[57]//atom bomb
		{
			//FIERY EXPLOSIONS
			alarm[2] = irandom_range(1,4);
			alarm[1]=11;
		}
		scrCrownOfDeath();
	}
}

alarm[0]=3;




