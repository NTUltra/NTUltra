move_bounce_solid(true)
bounces += 1
if bounces > 5
 instance_destroy()

snd_play(sndExplosionS)
instance_create(x,y,SmallExplosion)