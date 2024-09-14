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
			if wep_sprt[809] == sprChainSaw1
				wep_sprt[809] = sprChainSaw2
			else
				wep_sprt[809] = sprChainSaw1
		}
	}
}
if array_length(offsets) > 0
{
	var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var i = 0;
	repeat(am)
	{
		var thisDir = dir + offsets[i];
		with cuts[i]
		{
			x = other.x + lengthdir_x(other.step * (1 + i) + other.lifeTimeSpeed,thisDir);
			y = other.y + lengthdir_y(other.step * (1 + i) + other.lifeTimeSpeed,thisDir);
			direction = thisDir;
		}
		i += 1;
	}
	lifeTimeSpeed += originalLifeTimeSpeed + 4;
}