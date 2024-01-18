/// @description Crown of Death
var ang = random(360)
repeat(2)
{
	with instance_create(x+lengthdir_x(15,ang),y+lengthdir_y(15,ang),SmallExplosion) {
		alarm[3] = 0;
		dmg = max(1, dmg - 1);
		team = other.team;
	}
	ang += 180;
}