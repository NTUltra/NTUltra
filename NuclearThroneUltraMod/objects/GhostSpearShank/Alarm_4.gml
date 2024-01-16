/// @description Shank
BackCont.shake += 2;
BackCont.viewx2 += lengthdir_x(4,direction)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,direction)*UberCont.opt_shake
with instance_create(
x+lengthdir_x(60+(longarms*5),direction),
y+lengthdir_y(60+(longarms*5),direction),
GhostShank)
{
longarms = other.longarms
motion_add(other.direction,3.5+longarms)
image_angle = direction
team = other.team
}

snd_play(sndGhostShank);
repeat(3)
{
with instance_create(x,y,GhostEffect)
	motion_add(other.direction+(random(30)-15),3+random(4))
}
