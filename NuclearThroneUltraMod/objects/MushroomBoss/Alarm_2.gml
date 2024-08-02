/// @description Close range toxic spawm / buddy healing
alarm[1] += alarm[2];
forceAnimation = spr_idle;
event_user(14);
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
else
{
	var ran = random(360);
	var ranStep = 360/buddyAmount;
	repeat(buddyAmount)
	{
		with instance_create(x,y,BuddyShroom)
		{
			motion_add(ran,2);
			walk = 5;
		}
		ran += ranStep;
	}
	with BecomeMushroomBoss
	{
		instance_create(x,y,BuddyShroom);
	}
}