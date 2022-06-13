//this is an extra explosion
image_speed = 0.4

var um = GetPlayerUltramod()
if um == ultramods.bloodExplosionExplosion && UberCont.ultramodSwap
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

//instance_create(x+random(32)-16,y+random(32)-16,ExplosionStop);

