/// @description CUT
with owner
{
	wkick += 2;
}
BackCont.shake += 10;
BackCont.viewx2 += lengthdir_x(30,direction)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(30,direction)*UberCont.opt_shake
didCut = true;
snd_play(sndBoltCutterCut,0.05);
Sleep(20);
with instance_create(x,y,BoltCutterCutShank)
{
	owner = other.owner;
	dmg = 12;
	direction = other.direction;
	image_angle = other.image_angle;
	speed = other.speed;
	team = other.team;
	scrCopyWeaponMod(other);
}