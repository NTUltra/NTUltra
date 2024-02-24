event_inherited();

if instance_exists(Player)
{
	if Player.race == 22 && Player.bskin=2
		sprite_index=sprRogueCExplosion;
}

dmg = 10;

//Crown of death
if instance_exists(Player) && scrIsCrown(3) && object_index == RogueExplosion
{
	alarm[4] = 1;
}