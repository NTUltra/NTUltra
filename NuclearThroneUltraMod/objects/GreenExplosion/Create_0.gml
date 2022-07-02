/// @description Increase the dmg

// Inherit the parent event
event_inherited();

dmg = 12;
if myExplosionMask > 0
with myExplosionMask {
	dmg = other.dmg;
}
BackCont.shake += 4;//On top of normal explo
depth --;
if instance_exists(Player){
	if Player.ultra_got[57]//atom bomb
	{
		instance_create(x+random(32)-16,y+random(32)-16,ExplosionStop);
	}
	scrCrownOfDeath();
}