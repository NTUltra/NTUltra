/// @description Can ignite!
alarm[2] = 3;
if (scrIgniteToxic())
{
	var dir = random(360);
	repeat(3)
	{
		with instance_create(x + lengthdir_x(16,dir),y + lengthdir_y(16,dir),Flame)
		{
			team = 2;
			scrCopyWeaponMod(other);
			motion_add(dir,2);
		}
		dir += 120;
	}
	with instance_create(x,y,InkBlobIgnite) {
		ang = dir + 60;	
	}
}