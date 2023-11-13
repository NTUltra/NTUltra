/// @description Big Boom
scrDrop(22,7)
var ang = random(360);
var am = 6;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(16,ang),Explosion)
		team = other.team
	ang += angStep;
}
ang = random(360);
am = 3;
angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(7,ang),y+lengthdir_y(7,ang),SmallExplosion)
		team = other.team
ang += angStep;
}

var angstep = 30;
var ang = random(360);
repeat(12)
{
	with instance_create(x, y, EnemyBullet2Curve) {
	    motion_add(ang, 4);
	    image_angle = direction
	    team = other.team
	}
	ang += angstep;
}