/// @description SPC BITCHES
snd_play(sndSuperPlasmaCannon)
snd_play(sndPopPop);
with instance_create(x+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle),PlasmaHuge)
{motion_add(other.gunangle+(random(4)-2) - 23,0.5)
image_angle = direction
team = other.team}
with instance_create(x+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle),PlasmaHuge)
{motion_add(other.gunangle+(random(4)-2) + 23,0.5)
image_angle = direction
team = other.team}
BackCont.shake += 8
wkick = 10
motion_add(gunangle+180,6);