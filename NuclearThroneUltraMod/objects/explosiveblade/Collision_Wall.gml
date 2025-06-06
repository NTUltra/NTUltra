/// @description BOOM
move_bounce_solid(false)

if dist > 60
{
instance_create(x,y,DiscDisappear)
instance_destroy()
}
else
{
snd_play(sndDiscBounce,0.1)
with instance_create(x,y,DiscBounce)
image_angle = other.image_angle}


snd_play(sndExplosion);
with instance_create(xprevious-hspeed,yprevious-vspeed,Explosion)
	scrCopyWeaponMod(other);