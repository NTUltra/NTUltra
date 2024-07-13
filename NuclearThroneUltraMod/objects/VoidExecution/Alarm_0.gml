/// @description Some effects 

// Inherit the parent event
event_inherited();
if hitTarget != noone
{
	snd_play(sndExplosionS,0.2);
	with instance_create(hitTarget.x,hitTarget.y,VoidExecutionSlash) {
		team = other.team;
		scrCopyWeaponMod(other);
		target = other.hitTarget;
	}
	BackCont.viewx2 += lengthdir_x(10,direction+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,direction+180)*UberCont.opt_shake
	BackCont.shake += 10
}