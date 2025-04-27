/// @description Plasma
BackCont.shake += 10;
Sleep(50);
if instance_exists(Player) && Player.skill_got[17]
	snd_play(sndGravityBombExplodeUpg)
else
	snd_play(sndGravityBombExplode)
with instance_create(x,y,PlasmaImpact)
{
	dmg += 1;
	scrCopyWeaponMod(other);
}
var l = 32;
var am = 4;
var ang = direction;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),PlasmaImpact)
		scrCopyWeaponMod(other);
	ang += angStep;
}

l = 64;
am = 8;
ang -= angStep * 0.5;
angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),PlasmaImpact)
		scrCopyWeaponMod(other);
	ang += angStep;
}