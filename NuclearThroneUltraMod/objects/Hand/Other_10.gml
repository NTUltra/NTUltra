/// @description Switch to return
if instance_exists(Player) && Player.bskin == 1 && Player.ultra_got[106]
{
	var am = 8;
	var angStep = 180/8;
	var ang = image_angle - angStep * (am*0.5)
	repeat(am)
	{
		with instance_create(x,y,Flame)
		{
			motion_add(ang,5);
		}
		ang += angStep;
	}
}
