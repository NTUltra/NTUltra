/// @description EXPLO FREAKS FREKAKS
hasRevived = true;
with instance_create(tx,ty,ReviveFX)
	sprite_index = sprGoldRevive;
with instance_create(tx,ty,choose(Freak,ExploFreak))
{
	wasResurrected = true;
	droprate = 4;
	raddrop = 0;
	countKill = false;
	existTime = 30;
	alarm[1] *= 0.5;
}