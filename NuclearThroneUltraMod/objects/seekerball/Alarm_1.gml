/// @description Seekers!
alarm[1] = 3;
snd_play_fire(sndSeekerPistol);
with instance_create(x,y,SeekerBolt)
{motion_add(other.fireRotation,7)
image_angle = direction
team = other.team}
with instance_create(x,y,SeekerBolt)
{motion_add(other.fireRotation+180,7)
image_angle = direction
team = other.team}
fireRotation += 30;
BackCont.shake ++;