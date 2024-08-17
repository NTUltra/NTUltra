event_inherited();
image_speed = 0.4;
BackCont.shake -= 5;
team = -1
moodAmount = 0;
boostDamage = false;
with myExplosionMask
{
	mask_index = mskCrownGhostVerySmallExplodePlayer;
}
if instance_exists(Player){
	if Player.ultra_got[57]//atom bomb
	{
		alarm[2] = irandom_range(1,4);
		//BIGGER EXPLOSIONS
	}
	alarm[0] = 2;
}