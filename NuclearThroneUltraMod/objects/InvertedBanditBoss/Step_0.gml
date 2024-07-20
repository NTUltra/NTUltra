event_inherited()

if charge == 1 && target != noone
{
instance_create(x+random(8)-4,y+4+random(4),Dust)
motion_add(direction,0.5)
motion_add(gunangle,2)
if speed > 5.5
speed = 5.5
}
else
{
if walk > 0
{
walk -= 1
motion_add(direction,2)
motion_add(gunangle,1)
}
else if charge = -1
{
with BanditInverted
direction = point_direction(x,y,other.x,other.y)
sprite_index = spr_fire
}

if speed > 3
speed = 3
}

if my_health < maxhealth/2 and sndhalfhp = 0
{
snd_play(sndBigBanditHalfHP)
sndhalfhp = 1
}

if !instance_exists(Player) and sndtaunt = 0
{
tauntdelay += 1
if tauntdelay > 50
{
snd_play(sndBigBanditTaunt)
sndtaunt = 1
}
}

