event_inherited();
image_speed = 0.4;
BackCont.shake -= 5;
team = -1
with myExplosionMask
{
	if UberCont.opt_gamemode != 34 && UberCont.opt_gamemode != 9//NORMAL MODE
	{
		dmg = 4;
	}
	mask_index = mskSmallExplosion4Player;
}
if instance_exists(Player){
	if Player.ultra_got[57]
	{
		dmg += 2;
	}
	if Player.ultra_got[57]//atom bomb
	{
		alarm[2] = irandom_range(1,4);
		//FIERY EXPLOSIONS
		alarm[1]=11;
	}
	alarm[0] = 2;
}