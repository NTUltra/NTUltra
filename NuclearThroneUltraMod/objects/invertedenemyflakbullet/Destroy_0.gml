/// @description Insane amount of pellets
var proj = EnemyBullet3;
var ang = direction;
if team == 2
{
	proj = Bullet2;
}
var l = min(3,loops);
repeat(20)
{
	with instance_create(x, y, EnemyBullet3) {
	    motion_add(ang, 10.25 + l)
	    image_angle = direction
	    team = other.team
	}
	ang += 18;
}
BackCont.shake += 3
snd_play(sndFlakExplode);

