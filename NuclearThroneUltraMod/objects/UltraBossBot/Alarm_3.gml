/// @description Fire
	scrDrop(6,0);
	alarm[5] = 10;
	var ang = random(360);
	var am = 40;
	var angStep = 360 / am
	repeat(am)
	{
		with instance_create(x,y,ExploGuardianBullet)
		{
			motion_add(ang,7)
			image_angle = direction
			team = other.team
		}
		ang += angStep;
	}
	snd_play(sndExploGuardianFire);
	snd_play(sndQuadMachinegun);
	alarm[4] = 5;
