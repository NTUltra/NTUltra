repeat(14)
{
with instance_create(x,y,IceFlame)
{motion_add(random(360),2+random(6))
team = other.team}

}

snd_play(sndFrostShot1)


repeat(10)
{

with instance_create(x,y,FreezeBullet)
{motion_add(other.ang,16)
image_angle = direction
team = other.team}

ang+=360/10
}

BackCont.shake += 4

audio_stop_sound(sndSnowBlowerLoop)

