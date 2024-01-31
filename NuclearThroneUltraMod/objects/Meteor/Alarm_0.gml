alarm[0]=1;
image_angle+=10;
//enemy
BackCont.shake += 1
var vspd = 3;
if alarm[3] > 0
	vspd *= -1;
	
var gone = alarm[3] > 2 || alarm[1] > 0 || alarm[2] > 0
repeat(2){
	with instance_create(x,dy,TrapFire)
	{
		motion_add(other.image_angle+random(10)-5,2+random(2))
		vspeed += vspd;
		team = other.team
		sprite_index= sprFireLilHunter;
		image_xscale *= other.scale;
		image_yscale *= other.scale;
		if gone
		{
			mask_index = mskPickupThroughWall;
			depth = -11;
		}
	}

}


