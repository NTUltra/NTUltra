/// @description Fire spinneryoyo
if alarm[6] < 1
{
	snd_play(sndSuperDiscGun);
	var aimDir = 0;
	var am = 4;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,EnemySpinnerYoyo)
		{
			team = other.team;
			var sins = sin(0);
			if sins > 0
			{
				motion_add(aimDir + 10,5);
				rotation = -400;
			}
			else
			{
				motion_add(aimDir - 10,5);
				rotation = 400;
			}
			image_angle = direction
			oDir = direction;
			owner = other.id
		}
		aimDir += angStep;
	}
	alarm[4] = 5;
}
