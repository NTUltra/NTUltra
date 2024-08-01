/// @description Close range toxic spawm

if mode == 1
{
	snd_play(sndToxicBoltGas);
	var angStep = 12;
	var ang = random(360);
	var len = 8;
	repeat(30)
	{
		with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),ToxicGas)
		{
			motion_add(ang,3);	
		}
		ang += angStep;
	}
}