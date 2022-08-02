/// @description yeasplode

// Inherit the parent event
event_inherited();

var l = 90 * image_xscale;
var ang = image_angle;
var am = 4;
repeat(am)
{
	var xx = x + lengthdir_x(l,ang);
	var yy = y + lengthdir_y(l,ang);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	ang += 90;	
}