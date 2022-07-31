/// @description fire

snd_play(sndShotgun)
gunangle = point_direction(x,y,target.x,target.y)

snd_play(sndWaveGun,0.1,true)
with instance_create(x,y,EnemyWaveBurst)
{
creator = other.id
ammo = 7
time = 1
team = other.team
event_perform(ev_alarm,0) 
}
BackCont.shake += 2
wkick = 9

alarm[1] += 3;