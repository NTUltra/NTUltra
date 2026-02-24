if ammo > 0
{
if !audio_is_playing(sndSalamanderFireLoop)
snd_play(sndSalamanderFireLoop)
ammo -= 1
alarm[2] = 1
sprite_index = spr_fire
            
            with instance_create(x/*-8*/,y,EnemyIceFlame)
            {
            motion_add(other.gunangle+random(4)-2,9)
            //image_angle = direction
            team = other.team
            }
walk=0;
speed=0;
if angleleft
gunangle += 4;
else
gunangle -= 4;
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
