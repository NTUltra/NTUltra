/// @description Increase the dmg

// Inherit the parent event
event_inherited();

dmg = 12;
if myExplosionMask > 0
with myExplosionMask {
	if GetPlayerLoops() < 1 && !scrIsHardMode()
		dmg = 7;
	else
		dmg = other.dmg;
}
BackCont.shake += 4;//On top of normal explo
depth --;
if instance_exists(Player){
	if Player.ultra_got[57]//atom bomb
	{
		dmg += 3;
		alarm[2] = irandom_range(1,4);
		alarm[1] = 11;
	}
	scrCrownOfDeath();
}