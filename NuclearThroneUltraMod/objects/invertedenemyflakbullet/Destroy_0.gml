/// @description Insane amount of pellets
var proj = EnemyBullet3;
var ang = direction;
if team == 2
{
	proj = Bullet2;
}
repeat(20)
{
	with instance_create(x, y, EnemyBullet3) {
	    motion_add(ang, 8.5)
	    image_angle = direction
	    team = other.team
	}
	ang += 18;
}
BackCont.shake += 3
snd_play(sndFlakExplode);

