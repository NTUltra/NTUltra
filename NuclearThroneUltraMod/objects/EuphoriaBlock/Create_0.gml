/// @description Init
image_speed = 0.45;
if instance_exists(Player) && Player.race == 25
{
	image_xscale = 1.25;
	image_yscale = 1.25;
}
/*
//Na this is not intutive and not needed
dmg = 0;
if instance_exists(Player)
{
	if Player.skill_got[8]
	{
		sprite_index = sprEuphoriaBlockGamma;
	}
	dmg = 7;
	if race == 15 //Atom
	{
		dmg += 2+min(4,loops);
		if ultra_got[58]
			dmg += 6;
	}
}*/