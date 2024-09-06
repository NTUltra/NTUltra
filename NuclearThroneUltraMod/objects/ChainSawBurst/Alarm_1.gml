/// @description Move it
alarm[1] = 1;
var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
var i = 0;
repeat(am)
{
	var thisDir = dir + offsets[i];
	with cuts[i]
	{
		x = other.x + lengthdir_x(other.step * i + other.lifeTimeSpeed,thisDir);
		y = other.y + lengthdir_y(other.step * i + other.lifeTimeSpeed,thisDir);	
	}
	i += 1;
}
lifeTimeSpeed += originalLifeTimeSpeed;