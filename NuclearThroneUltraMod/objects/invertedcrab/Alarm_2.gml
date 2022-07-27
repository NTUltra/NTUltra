if ammo > 0
{
snd_play(sndScorpionFire)
ammo -= 1
alarm[2] = 2
sprite_index = spr_fire
var p1s = 6;
var p2s = 3;
var b1 = EnemyBullet2;
var b2 = EnemyBouncerBullet
if ammo % 2 == 0
{
	b1 = EnemyBouncerBullet;
	b2 = EnemyBullet2;
	var p1s = 3;
	var p2s = 6;
}
with instance_create(x,y,b1)
{
motion_add(other.gunangle+random(12)-6-25,p1s+random(2))
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet2)
{
motion_add(other.gunangle+random(12)-6,4+random(2))
image_angle = direction
team = other.team
}
with instance_create(x,y,b2)
{
motion_add(other.gunangle+random(12)-6+25,p2s+random(2))
image_angle = direction
team = other.team
}
}
else
{
sprite_index = spr_idle
alarm[1] = 30+random(10)
}

