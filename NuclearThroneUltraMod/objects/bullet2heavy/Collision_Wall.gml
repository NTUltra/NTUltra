/// @description Faster on wallhit
//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6 {
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

move_bounce_solid(false)
if speed+wallbounce > 18
speed = 18
else
speed += wallbounce*1.25
wallbounce *= 0.9
if random(2)<1
instance_create(x,y,Dust)