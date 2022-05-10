/// @description Change xplosion to purple

// Inherit the parent event
event_inherited();
with ThroneExplo
{
	spr_death = sprInvertedNothingDeath;
	explo = PurpleExplosion;
	sprite_index = sprInvertedNothingDeathLoop;
}
scrUnlockCharacter(27,"FOR KILLING THE INVERTED THRONE");
