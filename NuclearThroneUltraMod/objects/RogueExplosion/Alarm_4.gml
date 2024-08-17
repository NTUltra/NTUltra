/// @description CoD Crown of Death
var am = 3;
	var dis = 34;
	var ang = random(360);
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x+lengthdir_x(dis,ang),y+lengthdir_y(dis,ang),RogueExplosionCrownOfDeath)
		{
			dmg = 4;
			image_xscale = 0.5;
			image_yscale = 0.5;
			direction = ang;
			alarm[2] = 0;
			team = other.team;
			if team == 2
			{
				with myExplosionMask
					instance_destroy(id,false);
			}
		}
		ang += angStep;
	}


