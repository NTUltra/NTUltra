/// @description yeasplode

// Inherit the parent event
event_inherited();
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var l = 90 * image_xscale;
	var ang = image_angle;
	var am = 4;
	repeat(am)
	{
		var xx = x + lengthdir_x(l,ang);
		var yy = y + lengthdir_y(l,ang);
		with instance_create(xx,yy,MeatExplosion)
		{
			dmg --;
			direction = other.direction;
			speed = other.speed;
			team = other.team;
			alarm[11] = 0;
		}
		ang += 90;	
	}
}
else
{
	event_inherited();
	image_angle += 18;
	var s = speed;
	speed *= 0.5;
	event_inherited();
	speed = s;
	image_angle -= 18;
}