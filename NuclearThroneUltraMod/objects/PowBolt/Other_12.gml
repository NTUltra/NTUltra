/// @description Hit pellets
snd_play(sndPopgun,0.3);
var xx = x+hspeed+lengthdir_x(8,direction);
var yy = y+vspeed+lengthdir_y(8,direction);
with instance_create(xx,yy,Bullet2)
{
	motion_add(other.direction+90,8)
	image_angle = direction
	team = other.team
	alarm[0] = 5;
	alarm[1] += 4;
}
with instance_create(xx,yy,Bullet2)
{
	motion_add(other.direction-90,8)
	image_angle = direction
	team = other.team
	alarm[0] = 5;
	alarm[1] += 4;
}