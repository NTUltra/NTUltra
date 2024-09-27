/// @description Collision Wall
var hitWall = false;
if collision_line(x,y,x+hspeed,y,Wall,false,false)
{
	hitWall = true;
	event_user(0);
}
if collision_line(x,y,x,y+vspeed,Wall,false,false)
{
	hitWall = true;
	event_user(1);
}
if (hitWall)
{
	event_user(3);
}
if wallbounce > 0
{
	if speed < minSpeed
		speed = minSpeed;
}
if speed < 6 and sprite_index != sprBullet12Disappear and sprite_index != sprEBullet3Disappear
{
	friction = 0.7;
	sprite_index = sprBullet12Disappear
	if team != 2
		sprite_index = sprEBullet3Disappear
	image_index = 0
	image_speed = 0.4
}