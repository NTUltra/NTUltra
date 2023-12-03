/// @description Fire
	scrDrop(6,0);
	alarm[5] = 10;
	var ang = random(360);
	var am = 26;
	var angStep = 360 / am
	repeat(am)
	{
		with instance_create(x,y,ExploGuardianBullet)
		{
			motion_add(ang,5)
			image_angle = direction
			team = other.team
		}
		ang += angStep;
	}
	snd_play(sndExploGuardianFire);
	snd_play(sndQuadMachinegun);
	alarm[4] = 5;
