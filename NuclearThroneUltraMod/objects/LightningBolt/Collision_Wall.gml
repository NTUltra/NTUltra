/// @description Lightning
if speed != 0
{
snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
speed = 0
canBeMoved = false;
move_contact_solid(direction,16)
instance_create(x,y,Dust)
if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndLightning3,0.1,true)
else
snd_play(sndLightning1,0.1,true)
}
else
snd_play(sndLightning1,0.1,true)

with instance_create(x,y,Lightning)
{
	image_angle = other.direction+180;
team = other.team
ammo = 18
event_perform(ev_alarm,0)
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}
}
