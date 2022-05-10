/// @description MORE Normal fireball
var dir = point_direction(x, y, target.x, target.y);
if target.x < x
	right = -1
else if target.x > x
	right = 1
	
with instance_create(x+(lox*right),y,EnemyBullet1)
{
	sprite_index=sprFireBall;
	motion_add(dir+random(12)-6,3.5)
	image_angle = direction
	team = other.team
	snd_play(sndFireballerFire, 0.05)
}
dir -= 15;
with instance_create(x+(lox*right),y,EnemyBullet1)
{
	sprite_index=sprFireBall;
	motion_add(dir+random(12)-6,4)
	image_angle = direction
	team = other.team
	snd_play(sndFireballerFire, 0.05)
}
dir += 30;
with instance_create(x+(lox*right),y,EnemyBullet1)
{
	sprite_index=sprFireBall;
	motion_add(dir+random(12)-6,4)
	image_angle = direction
	team = other.team
	snd_play(sndFireballerFire, 0.05)
}
sprite_index = spr_fire;
alarm[3] = sprite_get_number(spr_fire)/image_speed;
alarm[1] -= 2;

if ammo > 0
{
	ammo --;
	alarm[4] = fireRate;
}
else
{
	ammo = maxAmmo;
}
