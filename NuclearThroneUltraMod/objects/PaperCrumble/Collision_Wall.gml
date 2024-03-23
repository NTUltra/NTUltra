/// @description Paper bounce sfx
move_bounce_solid(false)

if dist > 40
{
instance_create(x,y,DiscDisappear)
instance_destroy()
}
else
{
snd_play(sndPaperBounce,0.15);
with instance_create(x,y,DiscBounce)
image_angle = other.image_angle}



