/// @description Revive with FIRE
with instance_create(tx,ty,InvertedFreak)
{
	existTime = 30;
	raddrop = 0;
	countKill = false;
}
with instance_create(tx,ty,ReviveFX)
{
	sprite_index = sprReviveInverted;	
}
with instance_create(tx,ty,TrapFire)
{
	motion_add(random(360),1+random(2))
	team = 1;
	image_speed=0.5+random(0.2);
	sprite_index= sprFireLilHunter;
}