if sticky = 1
{

snd_play(sndGrenadeStickWall,0,true)
if speed > 0
instance_create(x,y,Dust)
speed = 0
move_contact_solid(direction,12)
}
else
{
snd_play(sndGrenadeHitWall,0,true)
move_bounce_solid(true)
speed *= 0.6
instance_create(x,y,Dust)}

