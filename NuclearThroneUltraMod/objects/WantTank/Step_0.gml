/// @description If reaching y

if instance_exists(Player) && Player.y < y
{
	with instance_create(x + 64,y-192,TankSpawn)
	{
		right = -1;
	}
	with instance_create(x - 64,y,TankSpawn) {
		myTank = IDPDTankDown;
	}
	instance_destroy();
	
}






