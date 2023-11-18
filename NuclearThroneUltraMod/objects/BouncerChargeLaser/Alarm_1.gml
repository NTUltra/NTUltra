/// @description reduce player ammo
if rate < maxcharge && instance_exists(Player)
{
	alarm[1] = costtime
	if instance_exists(creator)
	{
		if (scrCanChargeChargeGun())
		{
			Player.ammo[type] -= cost;
			with instance_create(x+random(64)-32,y+random(64)-32,WeaponCharge)
			{
				sprite_index=sprChargeWeaponChargeLaser;
				motion_add(point_direction(x,y,other.x,other.y),2+random(2))
				alarm[0] = 2 + speed;
			}
			BackCont.shake+=1;
		}
	}
}