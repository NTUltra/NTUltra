/// @description Toss it
spr_idle = sprSnowBotCarThrow
spr_walk = sprInvertedSnowBotWalk
spr_hurt = sprInvertedSnowBotHurt
alarm[2] = 5/0.4
sprite_index = spr_idle
speed = 0
image_index = 0
snd_play(sndSnowBotThrow)
instance_change(InvertedSnowBot,false)
with instance_create(x,y,CarThrow)
{
team = other.team
motion_add(other.gunangle,14)
}




