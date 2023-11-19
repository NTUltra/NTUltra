if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndLaserSwordUpg,0.2,true)
else
snd_play(sndLaserSword,0.2,true)
}
else
{snd_play(sndLaserSword,0.2,true)}

instance_create(x,y,Dust)
var len = 1;
if instance_exists(Player)
{
	len = len
}
with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),EnergySlash)
{
direction= other.image_angle
ang = direction
dmg = 8
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+Player.bettermelee)*3
image_angle = direction
motion_add(ang,2+longarms)
team = other.team

}



alarm[0]=4;

