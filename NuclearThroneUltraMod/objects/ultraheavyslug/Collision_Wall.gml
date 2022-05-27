/// @description Gain more speed
if speed > 6 {
snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

Sleep(1)
move_bounce_solid(true)
speed *= 0.8
speed += wallbounce*1.75
wallbounce *= 0.9
instance_create(x,y,Dust)

if speed > 18
speed = 18

