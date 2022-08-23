if speed > 1
	snd_play(sndGrenadeHitWall)
move_bounce_solid(true)
speed *= 0.4
instance_create(x,y,Dust)

