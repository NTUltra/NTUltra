function scrMods() {
	//List of mods here
	var notToxi = 2;
	if instance_exists(Player) && (Player.race == 23 || Player.skill_got[43])//Frog is oke with toxic!
	notToxi = -1;
	if UberCont.useSeed
	{
		if instance_exists(Player)
		{
			var i = Player.area + Player.subarea + UberCont.randomDailyMod;
			var b = Player.subarea;
		} else
		{
			var i = BackCont.area + BackCont.subarea + UberCont.randomDailyMod;
			var b = BackCont.subarea;
		}
		choice = 0;
		do
		{
			choice += i + b;
			while (choice > 18)
				choice -= 18;
			while (choice < 1)
				choice += max(1,b);
			
				notToxi--;
		}
		until ( (choice != 1 || notToxi < 0) && choice <= 18 )
		UberCont.randomDailyMod += 2;
		if UberCont.randomDailyMod > 18
		{
			if UberCont.randomDailyMod > 19
				UberCont.randomDailyMod = 1;
			else
				UberCont.randomDailyMod = 0;
		}
		return choice;
	}
	do 
	{
		choice = irandom_range(1,18);
		notToxi--;
	}
	until (choice != 1 || notToxi < 0)
	return choice;
	/*
	1. Toxic
	2. Explosion
	3. Flame
	4. Frost
	5. Blood
	6. Lightning
	7. Kraken
	8. Swarm
	9. Bouncer
	10. Shotgun
	11. Projectile Speed
	12. Reload Speed
	13. Homing
	14. Radiation
	15. Splinter
	16. Morph
	17. Pickups
	18. Gundrops
	*/
}
