/// @description I'm gonna push it...
var projectiles = ds_list_create();
var al = instance_place_list(x,y,projectile,projectiles,false);
var pp = projectilePush;
for (var i = 0; i < al; i++)
{
	var othr = projectiles[| i];
	if othr.isGrenade
	{
		with othr
		{
			with instance_create(x,y,Dust)
					motion_add(other.direction + random_range(-50,50),3+random(4));
			scrDeflectNade(other.direction);
			BackCont.shake += 2;
		}	
	} else if othr.typ == 2 {
		BackCont.shake += 2;
		with othr {
			instance_destroy();
		}
	}
	else if othr.typ == 1 || othr.canBeMoved
	{
		with othr
		{
			with instance_create(x,y,Dust)
					motion_add(other.direction + random_range(-50,50),3+random(4));
			motion_add(other.direction,pp);
			image_angle = direction;
			speed = clamp(speed,0.5,24);
			BackCont.shake += 0.5;
		}	
	}
}
alarm[1] = 1;