/// @description Second wazer

// Inherit the parent event
event_inherited();

/// @description Wazer
var dir = laserDirection+laserOffset;
mySecondLaser = instance_create(x+(lox*right),y,EnemyWazer);
with mySecondLaser {
	team = other.team;
	maxRange = other.maxRange;
	alarm[0] = other.laserDuration;
	owner = other.id;
	camKick = 0;
	camShake = 1;
	wkick = 4;
	image_angle = dir;
}
