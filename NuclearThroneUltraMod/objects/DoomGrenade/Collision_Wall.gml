
//snd_play(sndGrenadeHitWall)
move_bounce_solid(false)
speed *= 0.6
instance_create(x,y,Dust)

if hspeed > 0
right = 1
else if hspeed < 0
right = -1