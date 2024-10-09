/// @description Target and activate
active = 1
snd_play(sndWater1);
image_speed = 0.6;
repeat(6)
	with instance_create(x,y,Dust)
	{
		depth = other.depth + 1;
		sprite_index = sprBubble;
		speed += 1;
		motion_add(direction+180,1);
	}
with instance_create(x,y,LightningSpawn)
{
	sprite_index=sprTentacleSpawn
	image_angle = other.direction + 180;
}
var n = instance_nearest(x + (hspeed*2),y + (vspeed * 2),enemy)
if n != noone && n.team != team && point_distance(x,y,n.x,n.y) < 300 && !collision_line(x,y,n.x,n.y,Wall,false,false)
{
	motion_add(point_direction(x,y,n.x,n.y),5/accuracy);
	speed = 6 + (acc*2);
}
else
{
	speed = 6 + (acc*2);
}
BackCont.viewx2 += lengthdir_x(10,direction+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,direction+180)*UberCont.opt_shake
BackCont.shake += 10