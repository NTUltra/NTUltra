/// @description xxx
//SEE PLAYER


spr_idle = sprSnowBotCarThrow
spr_walk = sprSnowBotWalk
spr_hurt = sprSnowBotHurt
alarm[2] = 5/0.4
sprite_index = spr_idle
speed = 0
image_index = 0
snd_play(sndSnowBotThrow)
instance_change(SnowBot,false)
with instance_create(x,y,CarThrow)
{
team = other.team
motion_add(other.gunangle,12)
}





