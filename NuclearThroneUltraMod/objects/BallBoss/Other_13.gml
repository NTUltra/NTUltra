/// @description Side cool wavey spam attack

// Inherit the parent event
event_inherited();

if target != noone && instance_exists(target) && !instance_exists(InvertedThrone2WaveSquareBullet) && instance_exists(Player) && abs(Player.x - x) > 48
{
	var am = 12;
	var vdis = 90;
	var hdis = 350;
	var ad = 180;
	if target.x > x
	{
		hdis *= -1;
		ad = 0;
	}
	var yy = target.y - vdis*(am*0.5);
	var xx = x + hdis;
	repeat(am)
	{
		with instance_create(x,y,InvertedThrone2WaveSquareBullet)
		{
			destAcc *= 2;
			pSpeed = other.waveSpeed;
			spawnDelay = 30;
			alarm[3] += 50;
			team = other.team;
			desY = yy;
			desX = xx;
			aimDirection = ad;
		}
		yy += vdis;
	}
}