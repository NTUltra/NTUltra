/// @description reduce player ammo
if rate < maxcharge && instance_exists(Player)
{
	alarm[1] = costtime
	if instance_exists(creator)
	{
		if (scrCanChargeChargeGun())
		{
			Player.ammo[type] -= cost;
			instance_create(x,y,Dust);
			with instance_create(x+random(48)-24,y+random(48)-24,WeaponCharge)
			{
				sprite_index = other.chargeSpr;
				motion_add(point_direction(x,y,other.x,other.y),2+random(1))
				alarm[0] = speed + 3;
			}
			BackCont.shake+=1;
		}
	}
}