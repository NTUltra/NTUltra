/// @description Control second wazer

// Inherit the parent event
event_inherited();

if alarm[2] > 0 
{
	var dir = laserDirection + laserOffset;
	with mySecondLaser {
		x = other.x+(other.lox*other.right);
		y = other.y;
		image_angle = dir;
	}
}
