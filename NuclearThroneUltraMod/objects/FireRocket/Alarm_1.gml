/// @description Adjust aim
active = 1
BackCont.shake += 2
snd_play(sndFlare);
repeat(6)
with instance_create(x,y,HeavyFlame)
{
	depth = other.depth + 1;
	team = other.team;
	motion_add(random(360),2);
	motion_add(other.direction+180,1);
}
var n = instance_nearest(x + (hspeed*2),y + (vspeed * 2),enemy)
if n != noone && n.team != team && !collision_line(x,y,n.x,n.y,Wall,false,false)
{
	motion_add(point_direction(x,y,n.x,n.y),5/accuracy);
	speed = 7 + (acc*2);
}
else
{
	speed = 7 + (acc*2);
}
image_angle = direction;