var proj = EnemyBullet3;
var ang = direction;
if team == 2
{
	proj = Bullet2;
}
var l = min(3,loops);
repeat(6)
{
	with instance_create(x, y, proj) {
	    motion_add(ang, 9.25+l)
	    image_angle = direction
	    team = other.team
	}
	ang += 60;
}
BackCont.shake += 2
snd_play(sndFlakExplode);

