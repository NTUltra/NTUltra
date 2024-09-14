/// @description Move it
alarm[1] = 1;
if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	creator.wkick = - 10
	with creator
	{
		if object_index == Player || object_index == YungCuzDupe || object_index == CloneShooter || object_index == HeavyHeartTurret
		{
			if wep_sprt[812] == sprGhostDrill1
				wep_sprt[812] = sprGhostDrill2
			else
				wep_sprt[812] = sprGhostDrill1
		}
	}
}
if array_length(offsets) > 0
{
	var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var i = 0;
	var offset = maxOffset;
	repeat(am)
	{
		var thisDir = dir + offsets[i];
		with cuts[i]
		{
			x = other.x + lengthdir_x(other.step * (i - 1) + other.lifeTimeSpeed,thisDir);
			y = other.y + lengthdir_y(other.step * (i - 1) + other.lifeTimeSpeed,thisDir);
			x += lengthdir_x(offset,dir + 90);
			y += lengthdir_y(offset,dir + 90);
			direction = thisDir;
		}
		i += 1;
		offset -= offsetStep;
	}
	offset = maxOffset;
	var j = i;
	i = 0;
	repeat(am)
	{
		var thisDir = dir + offsets[j];
		with cuts[j]
		{
			x = other.x + lengthdir_x(other.step * (i - 1) + other.lifeTimeSpeed,thisDir);
			y = other.y + lengthdir_y(other.step * (i - 1) + other.lifeTimeSpeed,thisDir);
			x -= lengthdir_x(offset,dir + 90);
			y -= lengthdir_y(offset,dir + 90);
			direction = thisDir;
		}
		i += 1;
		j += 1;
		offset -= offsetStep;
	}
	//FINAL
	var thisDir = dir + offsets[j];
	with cuts[j]
	{
		x = other.x + lengthdir_x(other.step * (i - 1) + other.lifeTimeSpeed,thisDir);
		y = other.y + lengthdir_y(other.step * (i - 1) + other.lifeTimeSpeed,thisDir);
		direction = thisDir;
	}
	lifeTimeSpeed += originalLifeTimeSpeed;
}