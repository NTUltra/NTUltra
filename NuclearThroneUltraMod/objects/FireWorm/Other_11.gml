/// @description Normal fireball
scrTarget();
if target > 0
{
	var dir = point_direction(x, y, target.x, target.y);
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
	with instance_create(x+(lox*right),y,EnemyFireBullet)
	{
		motion_add(dir+random(12)-6,3.5)
		image_angle = direction
		team = other.team
		snd_play(sndFireballerFire, 0.05)
	}
	sprite_index = spr_fire;
	alarm[3] = sprite_get_number(spr_fire)/image_speed;
	alarm[1] -= 2;
}