/// @description Crown of death
if scrIsCrown(3)//Crown of death
{
	var ang = random(360);
	var angStep = 180;
	var dis = 18;
	repeat(2)
	{
		with instance_create(x+lengthdir_x(dis,ang),y+lengthdir_y(dis,ang),VerySmallGhostExplosion)
		{
			dmg = max(1,other.dmg * 0.25);
			direction = ang;
			alarm[0] = 0;
			alarm[2] = 0;
		}
		ang += angStep;
	}
}