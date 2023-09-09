/// @description Necro
with instance_create(tx,ty,ReviveFX)
	sprite_index = sprNecroRevive;
with instance_create(tx,ty,Necromancer)
{
	raddrop = 0;
	countKill = false;
	existTime = 30;
	alarm[1] *= 0.6;
}