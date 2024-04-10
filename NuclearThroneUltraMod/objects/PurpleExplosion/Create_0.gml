/// @description Even more dmg

// Inherit the parent event
event_inherited();
dmg = 16;
moodAmount = 3;
if myExplosionMask > 0
with myExplosionMask {
	dmg = other.dmg;
}
BackCont.shake += 2;//Additional shake
if instance_exists(Player){
	if Player.ultra_got[57]//atom bomb
	{
		dmg += 4;
	}
}