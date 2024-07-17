/// @description Another slash
if !playedSound
{
	with owner
	{
		wkick = -6;	
	}
	snd_play(sndClawSecond);
	with ClawSlash
	{
		playedSound = true;	
	}
}
BackCont.viewx2 += lengthdir_x(6,image_angle)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,image_angle)*UberCont.opt_shake
BackCont.shake += 1
with instance_create(x,y,ClawSlashSecond)
{
	direction = other.direction;
	image_angle = other.image_angle;
	speed = other.speed * 0.5;
	team = other.team;
	scrCopyWeaponMod(other);
	dmg = other.dmg + 2;
}
