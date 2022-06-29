event_inherited();
friction = 0.2;
typ = 2;
dmg = 17;
amountOfPellets = 2;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
		amountOfPellets+=1;
}
hitEntities = [];
