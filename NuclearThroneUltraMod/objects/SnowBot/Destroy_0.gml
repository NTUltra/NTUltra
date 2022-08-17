

scrDrop(35,0)

event_inherited()

if GetPlayerLoops() > 6
{
	instance_create(x,y,BigWallBreak);
	var ang = random(360);
	var am = 6;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,EnemyIceFlame)
		{motion_add(ang,1+random(2))
		team = other.team
		}
		ang += angStep;
	}
}
