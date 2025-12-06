scrDrop(100,0);
scrDrop(30,10);

event_inherited()

snd_play(sndExplosionXL)
var ang = random(360);
var angStep = 360/3;
with instance_create(x,y,PopoExplosion)
{
	team = other.team;
}
repeat(3)
{
	with instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),PopoExplosion)
	{
		team = other.team;
	}
	ang += angStep;
}
if !isDown
{
	with IDPDTankDown
	{
		my_health = min(my_health, 250);
		prevhealth = my_health;
	}
}
else
{
	with IDPDTank
	{
		my_health = max(1,my_health - 50);
		prevhealth = my_health;
	}
}
scrBossKill();
if (!instance_exists(SurvivalWave) && instance_number(IDPDTank) == 1)
{
	with MusCont
	{
		scrStopSong();
	}
}