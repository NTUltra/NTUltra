/// @description UltraSlash
snd_play(sndUltraSword,0.2,true)
instance_create(x,y,Smoke)
var dir;
if instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy);
	if point_distance(x,y,n.x,n.y) < 64
		dir = point_direction(x,y,n.x,n.y);
	else
		dir = random(360);
}
else
	dir = random(360);
if instance_exists(Player){
with instance_create(x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),Slash)
{
	sprite_index=sprUltraSlash;
direction=dir
ang = direction
dmg = 10
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team
sleepRate=6;
}
}
else{
with instance_create(x,y,Slash)
{
	sprite_index=sprUltraSlash;
direction=dir
ang = direction
dmg = 10
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team
sleepRate=6;
}
}
alarm[0]=3;

