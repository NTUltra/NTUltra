/// @description Check hud mutation space
if dataRef == noone
{
	dataRef = instance_exists(Player) ? Player : noone;	
}
if dataRef != noone && instance_exists(dataRef)
{
	var extraSpace = 12 - (max(-1,dataRef.maxarmour-1-dataRef.hudArmourSpace))
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		extraSpace += 4;
	if dataRef.totalSkills > extraSpace
	{
		alarm[1] = 1;
		skillscrollmax = dataRef.totalSkills - floor(min(dataRef.totalSkills,40)/10);
	}
	else
	{
		alarm[1] = 0;	
	}
}