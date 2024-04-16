scrDrop(15,0)
if (!sleeping)
{
snd_play(sndFlareExplode);
event_inherited()
var ang = random(360);
var am = 30;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,EnemyIceFlame)
	{
		motion_add(random(360),3)
		team = other.team
	}
	ang += angStep;
}
ang += angStep*0.5;
am += 10;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,EnemyIceFlame)
	{
		motion_add(random(360),3.8)
		team = other.team
	}
	ang += angStep;
}
instance_create(x,y,WallBreak);
var fbAng = 0;
repeat(4)
{
	var ps = 3;
	repeat(4)
	{
		with instance_create(x,y,EnemyIceFlame)
	    {
		    motion_add(fbAng,ps);
		    image_angle = direction
		    team = other.team
	    }
		ps += 1;
	}
	fbAng += 90;
}
}