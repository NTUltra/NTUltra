event_inherited();
image_speed = 0.4

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1

//hit=false;
snd_wallhit=sndMeleeWall;
snd_hit=sndLightning1;

if instance_exists(Player){
if Player.skill_got[17] = 1
{
snd_hit=sndLightning3
image_speed = 0.2-(Player.betterlaserbrain*0.6)
}
else
snd_hit=sndLightning1
}

