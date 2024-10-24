/// @description Can Ultra ignite!
alarm[2] = 3;
if (scrIgniteToxic())
{
	var dir = random(360);
	repeat(2)
	{
		with instance_create(x + lengthdir_x(16,dir),y + lengthdir_y(16,dir),UltraFlame)
		{
			team = 2;
			scrCopyWeaponMod(other);
			motion_add(dir,3);
		}
		dir += 180;
	}
	/*
	with instance_create(x,y,InkBlobIgnite) {
		ang = dir + 90;	
	}*/
}