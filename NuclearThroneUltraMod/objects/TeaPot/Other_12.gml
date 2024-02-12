/// @description Explosion
scrDrop(20,0)
with instance_create(x,y,Explosion)
	team = other.team

var angstep = 45;
var ang = random(360);
repeat(8)
{
	with instance_create(x, y, EnemyBullet2Curve) {
	    motion_add(ang, 3);
		curveSpeed -= 0.005;
	    image_angle = direction
	    team = other.team
	}
	ang += angstep;
}