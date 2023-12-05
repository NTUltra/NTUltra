move_bounce_solid(false)
bounces += 1
if bounces > 5
 instance_destroy()

snd_play(sndExplosionS)
instance_create(x,y,SmallExplosion)