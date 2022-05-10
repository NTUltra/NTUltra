/// @description Ice flame
with instance_create(x,y,EnemyIceFlame)
{
	direction = other.direction;
	speed = other.speed * 0.25;
	image_angle = direction
	team = other.team
}
alarm[1] = 2;
