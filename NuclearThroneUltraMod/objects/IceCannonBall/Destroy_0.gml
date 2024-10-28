event_inherited();
snd_play(sndExplosion)
snd_play(sndFrostShot1)
var ang = random(360);
repeat(20)
{

with instance_create(x,y,FreezeBullet)
{motion_add(ang,16)
image_angle = direction
team = other.team}
with instance_create(x,y,IceFlame)
{motion_add(ang,2+random(6))
team = other.team}
	ang+=18;
}

BackCont.shake += 10;

audio_stop_sound(sndSnowBlowerLoop)

