var proj = EnemyBullet3;
var ang = direction;
if team == 2
{
	proj = Bullet2;
}
var l = min(5,loops);
var spd = projS + l;
repeat(amount)
{
	with instance_create(x, y, proj) {
	    motion_add(ang, spd)
	    image_angle = direction
	    team = other.team
	}
	with instance_create(x,y,BloodStreak)
	{
		motion_add(ang + 30, spd - 3);
	    image_angle = direction
	}
	ang += 60;
}
snd_play(sndMeatExplo)
snd_play(sndFlakExplode);
scrDrop(10,0);

