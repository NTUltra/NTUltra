move_bounce_solid(true)

if dist > 40
{
instance_create(x,y,DiscDisappear)
instance_destroy()
}
else
{
snd_play(sndDiscBounce)
with instance_create(x,y,DiscBounce)
image_angle = other.image_angle}



