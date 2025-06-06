move_bounce_solid(false)

if dist > 50
{
instance_create(x,y,DiscDisappear)
instance_destroy()
}
else
{
snd_play(sndDiscBounce,0.1)
with instance_create(x,y,DiscBounce)
image_angle = other.image_angle}



speed = clamp(speed - 1,2,5);