ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	if array_length(cuts) > 0
	{
		var i = 0;
		repeat(am)
		{
			var thisDir = dir + offsets[i];
			with cuts[i]
			{
				direction = thisDir;
				speed = 3 + other.longarms;
			}
			i += 1;
		}
	}
	cuts = [];
	offsets = [];
	cutLength = 0;
	lifeTimeSpeed = originalLifeTimeSpeed;
	//FIRING
	var i = 0;
	repeat(am)
	{
		offsets[cutLength] = (random(12) - 6) * accuracy;
		var thisDir = dir + offsets[cutLength];
	    cuts[cutLength] = instance_create(
		x+lengthdir_x(step * (1 + i),thisDir),
		y+lengthdir_y(step * (1 + i),thisDir),
		ChainSawSlash)
		with cuts[cutLength]
	    {
			if i % 2 == 0
			{
				rotation *= -1;	
			}
			direction = thisDir;
		    image_angle = direction
			scrCopyWeaponMod(other);
		    team = other.team
		}
		cutLength += 1;
		i += 1;
	}
	BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	if BackCont.shake < 2
		BackCont.shake = 2
	creator.wkick = - 12
}

if ammo <= 0
{
	alarm[2] = 5;
	alarm[0] = 0;
}


