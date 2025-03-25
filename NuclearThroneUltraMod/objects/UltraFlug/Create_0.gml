event_inherited();
dmg = 50;
amountOfPellets = 4;
if instance_exists(Player)
{
	if Player.skill_got[15]
		amountOfPellets+=1;
}
