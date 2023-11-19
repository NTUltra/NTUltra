snd_play(sndScrewdriver,0.2,true)

instance_create(x,y,Dust)
/*
var n = instance_nearest(x,y,enemy);
if n != noone
	var aim = point_direction(x,y,n.x,n.y);
else
	var aim = random(360);
*/
var len = 1;
if instance_exists(Player)
{
	len = (Player.skill_got[13]+Player.bettermelee)*10
}
with instance_create(x+lengthdir_x(len,image_angle),
y+lengthdir_y(len,image_angle),Shank)
{
	direction = other.image_angle
	ang = direction
	dmg = 3
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+Player.bettermelee)*3
	image_angle = direction
	motion_add(ang,2+longarms)
	team = other.team

}

alarm[0] = 2;

