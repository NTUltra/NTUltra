/// @description FrostSlash
snd_play(sndHammer,0.2,true)
snd_play(sndFrostShot1,0.1,true);
instance_create(x,y,Dust)

var len = 1;
if instance_exists(Player)
{
	len = len
}
with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),FrostSlash)
{
	direction=random(360)
	ang = direction
	dmg = 5
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+Player.bettermelee)*3
	image_angle = direction
	motion_add(ang,2+longarms)
	team = other.team
}
alarm[0]=4;

