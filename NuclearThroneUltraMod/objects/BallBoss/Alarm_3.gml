/// @description Wazer
snd_play(sndWazerStart);
if array_length(myLasers) < 1
{
	myLasers[0] = instance_create(x,y,EnemyWazer);
	with myLasers[0] {
		team = other.team;
		//maxRange = other.maxRange;
		alarm[0] = 10;
		owner = other.id;
		camKick = 0;
		camShake = 1;
		image_angle = other.image_angle;
	}
}
else
{
	myLasers[1] = instance_create(x,y,EnemyWazer);
	with myLasers[1] {
		team = other.team;
		//maxRange = other.maxRange;
		alarm[0] = 10;
		owner = other.id;
		camKick = 0;
		camShake = 1;
		image_angle = other.image_angle + 180;
	}
}
