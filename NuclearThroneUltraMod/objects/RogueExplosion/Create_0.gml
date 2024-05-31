event_inherited();

if instance_exists(Player)
{
	if Player.race == 22 && Player.bskin=2
		sprite_index=sprRogueCExplosion;
	if scrIsCrown(3) && object_index == RogueExplosion
	{
		alarm[4] = 1;
	}
}

dmg = 10;
with myExplosionMask
{
	dmg -= 1;	
}
moodAmount = 2;
//Crown of death