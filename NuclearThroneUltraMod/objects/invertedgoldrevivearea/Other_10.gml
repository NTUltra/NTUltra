/// @description Lightning
with instance_create(tx,ty,ReviveFX)
	sprite_index = sprInvertedGoldRevive;
with instance_create(tx,ty,choose(InvertedFreak,InvertedExploFreak))
{
	wasResurrected = true;
	droprate = 5;
	raddrop = 0;
	countKill = false;
	existTime = 30;
	alarm[1] *= 0.5;
}