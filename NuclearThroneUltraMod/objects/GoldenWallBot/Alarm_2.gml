/// @description fire shank
snd_play(choose(sndSword1,sndSword2))
var ang = originalAngle + 180;
var ps = projectileSpeed;
var am = 1;
if type == 1//Inverted
	am = 2;
repeat(am)
{
	with instance_create(x, y, EnemyLanceSlash) {
	    motion_add(ang, ps)
	    image_angle = direction
	    team = other.team
	}
}
alarm[3] = 3;