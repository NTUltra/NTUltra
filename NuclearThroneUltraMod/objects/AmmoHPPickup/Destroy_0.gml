/// @description Reroll

if rerolls > 1
{
	with instance_create(x,y,choose(AmmoPickup,AmmoPickup,AmmoPickup,HPPickup))
		rerolls = other.rerolls - 1;
} else if rerolls == 1
{
	instance_create(x,y,Rad);
}