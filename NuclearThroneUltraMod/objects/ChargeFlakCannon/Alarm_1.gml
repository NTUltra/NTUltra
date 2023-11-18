/// @description reduce player ammo
if rate < maxcharge && instance_exists(Player)
{
	alarm[1] = costtime;

	if instance_exists(creator)
	{
		//FIRING
		if (scrCanChargeChargeGun())
		{
			with instance_create(x+random(64)-32,y+random(64)-32,WeaponCharge)
			{
				motion_add(point_direction(x,y,other.x,other.y),2+random(2))
				alarm[0] = 2 + speed;
			}
			Player.ammo[type] -= cost;
			BackCont.shake+=1;
		}
	}
}