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
	var offset = maxOffset;
	repeat(am)
	{
		offsets[cutLength] = (random(8) - 4) * accuracy;
		var thisDir = dir + offsets[cutLength];
	    cuts[cutLength] = instance_create(
		x + lengthdir_x(step * (i - 1),thisDir) + lengthdir_x(offset,dir + 90),
		y + lengthdir_y(step * (i - 1),thisDir) + lengthdir_y(offset,dir + 90),
		GhostDrillShank)
		with cuts[cutLength]
	    {
			direction = dir;
		    image_angle = direction
			scrCopyWeaponMod(other);
		    team = other.team
		}
		repeat(2)
		with instance_create(
		x + lengthdir_x(step * (i - 1),thisDir) + lengthdir_x(offset,dir + 90),
		y + lengthdir_y(step * (i - 1),thisDir) + lengthdir_y(offset,dir + 90),
		GhostEffect)
		{
			motion_add(thisDir+(random(10)-15)*other.accuracy,3+random(4))
		}
		cutLength += 1;
		i += 1;
		offset -= offsetStep;
	}
	offset = maxOffset;
	i = 0;
	repeat(am)
	{
		offsets[cutLength] = (random(8) - 4) * accuracy;
		var thisDir = dir + offsets[cutLength];
	    cuts[cutLength] = instance_create(
		x + lengthdir_x(step * (i - 1),thisDir) - lengthdir_x(offset,dir + 90),
		y + lengthdir_y(step * (i - 1),thisDir) - lengthdir_y(offset,dir + 90),
		GhostDrillShank)
		with cuts[cutLength]
	    {
			direction = dir;
			image_yscale = choose(1,-1);
		    image_angle = direction
			scrCopyWeaponMod(other);
		    team = other.team
		}
		repeat(2)
		with instance_create(
		x + lengthdir_x(step * (i - 1),thisDir) - lengthdir_x(offset,dir + 90),
		y + lengthdir_y(step * (i - 1),thisDir) - lengthdir_y(offset,dir + 90),
		GhostEffect)
		{
			motion_add(thisDir+(random(10)-15)*other.accuracy,3+random(4))
		}
		cutLength += 1;
		i += 1;
		offset -= offsetStep;
	}
	//FINAL
	offsets[cutLength] = (random(8) - 4) * accuracy;
	var thisDir = dir + offsets[cutLength];
	cuts[cutLength] = instance_create(
	x + lengthdir_x(step * (i - 1),thisDir),
	y + lengthdir_y(step * (i - 1),thisDir),
	GhostDrillShank)
	with cuts[cutLength]
	{
		direction = dir;
		image_angle = direction
		scrCopyWeaponMod(other);
		team = other.team
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


