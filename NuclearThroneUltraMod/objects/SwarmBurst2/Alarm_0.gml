ammo -= 1

alarm[0] = time

//FIRING
snd_play(sndJackHammer,0.2,true);

with instance_create(x,y,SwarmBolt)
{motion_add(other.ang,2)
	scrCopyWeaponMod(other);
image_angle = direction
team = other.team}

with instance_create(x,y,SwarmBolt)
{motion_add(other.ang + other.angOffset,2)
	scrCopyWeaponMod(other);
image_angle = direction
team = other.team}


ang += angStep;


BackCont.shake += 2

if ammo <= 0
instance_destroy()
else
alarm[0] = time;
