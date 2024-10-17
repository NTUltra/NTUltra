/// @description Close range toxic spawm / buddy healing
alarm[1] += alarm[2];
forceAnimation = spr_idle;
event_user(14);
scrDrop(10,0);
if mode == 1
{
	snd_play(sndToxicBoltGas,0.05);
	var angStep = 12;
	var ang = random(360);
	var len = 8;
	repeat(30)
	{
		with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),ToxicGas)
		{
			motion_add(ang,1);	
		}
		ang += angStep;
	}
	var dir = 0;
	var randir = 1;
	var bspd = 2;
	var spd = bspd;
	var acc = 0.3;
	var am = 8;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir); 
			speed = spd;	
		}
		spd += acc;
	}
	dir = 90;
	spd = bspd;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir);
			speed = spd;
		}
		spd += acc;
	}
	dir = 180;
	spd = bspd;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir);
			speed = spd;	
		}
		spd += acc;
	}
	dir = 270;
	spd = bspd;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir);
			speed = spd;
		}
		spd += acc;
	}
}
else if instance_number(BuddyShroom) < 6
{
	snd_play(sndBigMushroomBossSummon,0.05);
	var ran = random(360);
	var ranStep = 360/buddyAmount;
	repeat(buddyAmount)
	{
		with instance_create(x,y,BuddyShroom)
		{
			motion_add(ran,2);
			walk = 5;
			if instance_exists(Player) && Player.skill_got[29] {
				walk = 0;
				speed = 1;
				alarm[1] = 60
				scrGiveSnooze();
			}
		}
		ran += ranStep;
	}
	with BecomeMushroomBoss
	{
		instance_create(x,y,BuddyShroom);
	}
}