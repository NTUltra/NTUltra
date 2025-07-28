/// @description Fire!!
fired = true;
shot = false;
var ps = projectileSpeed;
var am = array_length(myCompanions);
for (var i = 0; i < am; i++) {
	with myCompanions[i]
	{
		instance_destroy(id,false);
		with instance_create(x,y,GuardianSquareBullet)
		{
			sprite_index = other.sprite_index;
			image_index = other.image_index;
			team = other.team;
			switch (other.dirStep)
			{
				case 0:
					hspeed = other.rotationDirection * ps;
				break;
				case 1:
					vspeed = other.rotationDirection * ps;
				break;
				case 2:
					hspeed = other.rotationDirection * ps * -1;
				break;
				case 3:
					vspeed = other.rotationDirection * ps * -1;
				break;
			}
		}
	}
}
snd_play(sndExploGuardianFire);
var angle = 0;
repeat(4)
{
	with instance_create(x,y,exploBullet)
	{
		motion_add(angle,ps);
		image_angle = direction
		team = other.team
	}
	angle += 90;
}