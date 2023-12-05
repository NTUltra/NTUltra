move_bounce_solid(false)

if dist > 40
{
instance_create(x,y,DiscDisappear)
instance_destroy()
}
else
{
snd_play(sndDiscBounce)
with instance_create(x,y,DiscBounce)
image_angle = other.image_angle

if split>0{
        
        with instance_create(x,y,Blade)
        {
			motion_add(random(360),10)
	        image_angle = direction
	        team = other.team
		}
        
split--;
Sleep(2);
}
}



