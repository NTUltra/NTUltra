snd_play(sndSniperFire)
wkick = 7
var sps = 8;
var xx = x;
var yy = y;
var spd = 15;
with instance_create(xx,yy,proj)
{
	motion_add(other.gunangle,spd)
	team = other.team
	image_angle = direction
	firedbysniper=true;
}
xx = x + lengthdir_x(sps,gunangle+90);
yy = y + lengthdir_y(sps,gunangle+90);
with instance_create(xx,yy,proj)
{
	motion_add(other.gunangle,spd)
	team = other.team
	image_angle = direction
	firedbysniper=true;
}
xx = x + lengthdir_x(sps,gunangle-90);
yy = y + lengthdir_y(sps,gunangle-90);
with instance_create(xx,yy,proj)
{
	motion_add(other.gunangle,spd)
	team = other.team
	image_angle = direction
	firedbysniper=true;
}
if instance_exists(target)
	gunangle = point_direction(x,y,target.x,target.y);

alarm[1] += actTime * 4;
gonnafire = 0