/// @description SpinSlash
snd_play(choose(sndSword1,sndSword2),0.2,true)
instance_create(x,y,Dust)

var len = 1;
if instance_exists(Player)
{
	len = len +( Player.skill_got[13]+Player.bettermelee) *3
}
with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),SpinSlash)
{
	direction=other.image_angle
	ang = direction
	dmg = 5
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+Player.bettermelee)*3
	image_angle = direction
	motion_add(ang,2+longarms)
	team = other.team
}

alarm[0]=7;

