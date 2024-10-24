/// @description SPC BITCHES
snd_play(sndSuperPlasmaCannon)
snd_play(sndPopPop);
with instance_create(x+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle),PlasmaHuge)
{motion_add(other.gunangle+(random(4)-2) - 23,1)
image_angle = direction
team = other.team
sprite_index = sprPlasmaBallHugeEnemy;}
with instance_create(x+lengthdir_x(8,gunangle),y+lengthdir_y(8,gunangle),PlasmaHuge)
{motion_add(other.gunangle+(random(4)-2) + 23,1)
image_angle = direction
team = other.team
sprite_index = sprPlasmaBallHugeEnemy;}
BackCont.shake += 8
wkick = 10
motion_add(gunangle+180,6);