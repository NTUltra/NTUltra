ammo -= 1

alarm[0] = time

//FIRING
snd_play(sndRocket,0.1,true)

with instance_create(x,y,Missile)
{motion_add(other.ang,2)
	scrCopyWeaponMod(other);
image_angle = direction
team = other.team}
ang += angStep;


BackCont.shake += 2

if ammo <= 0
instance_destroy()
else
alarm[0] = time;
