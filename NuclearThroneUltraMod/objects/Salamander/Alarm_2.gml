if ammo > 0
{
if !audio_is_playing(sndSalamanderFireLoop)
snd_play(sndSalamanderFireLoop)
ammo -= 1
alarm[2] = 1
sprite_index = spr_fire

            with instance_create(x/*-8*/,y,TrapFire)
            {
            motion_add(other.gunangle+random(4)-2,8)
            team = other.team
            ignoreHitme=true;
            }
walk=0;
speed=0;
if angleleft
gunangle += 2;
else
gunangle -= 2;
}
else
{
audio_stop_sound(sndSalamanderFireLoop)

snd_play(sndSalamanderEndFire)
sprite_index = spr_idle
alarm[1] = 30+random(10)
}

/* */
/*  */
