/// @description Crown of Death
var ang = random(360)
repeat(3)
{
	with instance_create(x+lengthdir_x(26,ang),y+lengthdir_y(26,ang),SmallMeatExplosion) {
		alarm[3] = 0;
		team = other.team;
		dmg = max(1,dmg-2);
	}
	ang += 120;
}