/// @description Missiles!
alarm[1] = fireRate;
fireRate++;
snd_play_fire(sndRocket);
with instance_create(x,y,Missile)
{motion_add(other.fireRotation,4)
image_angle = direction
team = other.team}
with instance_create(x,y,Missile)
{motion_add(other.fireRotation+180,4)
image_angle = direction
team = other.team}
fireRotation += 30;
BackCont.shake +=2;