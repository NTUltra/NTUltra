/// @description Also do a new side attack

// Inherit the parent event
event_inherited();

if target > -1 && instance_exists(target) && !instance_exists(InvertedThrone2WaveSquareBullet)
{
	var am = 12;
	var vdis = 80;
	var hdis = 256;
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
			team = other.team;
			desY = yy;
			desX = xx;
			aimDirection = ad;
		}
		yy += vdis;
	}
}