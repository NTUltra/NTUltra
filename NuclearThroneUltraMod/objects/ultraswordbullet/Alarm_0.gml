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
var len = 1;
if instance_exists(Player)
{
	len = len
}
with instance_create(x+lengthdir_x(len,dir),y+lengthdir_y(len,dir),Slash)
{
	sprite_index=sprUltraSlash;
	wallPierce *= 0.5;
direction=dir
ang = direction
dmg = 12
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team

}

alarm[0]=3;

