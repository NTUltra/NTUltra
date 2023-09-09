/// @description Inv necro
with instance_create(tx,ty,ReviveFX)
	sprite_index = sprInvertedNecroRevive;
with instance_create(tx,ty,InvertedNecromancer)
{
	alarm[1] *= 0.5;
	raddrop = 0;
	countKill = false;
	existTime = 30;
}