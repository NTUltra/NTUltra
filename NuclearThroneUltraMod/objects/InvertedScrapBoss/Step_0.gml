event_inherited()

if speed > 2
speed = 2

if walk > 0
{
walk -= 1
motion_add(direction,0.5)
if target != noone
motion_add(point_direction(x,y,target.x,target.y),0.5)
sprite_index = spr_walk
if round(walk/10) = walk/10
snd_play(sndBigDogWalk)
if walk = 0
sprite_index = spr_idle
}

if ammo > 0
{
if sprite_index != spr_fire and sprite_index != spr_hurt
{
speed = 0
sprite_index = spr_idle
}
speed = 1
}

if my_health < maxhealth/2 and sndhalfhp = 0
{
snd_play(sndBigDogTaunt)
sndhalfhp = 1
}

if !instance_exists(Player) and sndtaunt = 0
{
tauntdelay += 1
if tauntdelay > 50
{
snd_play(sndBigDogTaunt)
sndtaunt = 1
}
}

