event_inherited();
image_speed = 0.4;
BackCont.shake -= 5;
team = -1
if instance_exists(Player){
	if Player.ultra_got[57]//atom bomb
	{
		alarm[2] = irandom_range(1,4);
		//FIERY EXPLOSIONS
		alarm[1]=11;
	}
	alarm[0] = 2;
}
with myExplosionMask
{
	mask_index = mskSmallExplosion4Player;
}