event_inherited()
scrDrop(40,0)
snd_play(sndBreakIce,0.1);
var ang = random(360);
repeat(6)
{
	with instance_create(x,y,EnemyIceFlame)
	{
		motion_add(ang,2.2);
		image_angle = direction
		team = other.team
	}
	ang += 60;	
}
ang += 30;
repeat(6)
{
	with instance_create(x,y,EnemyIceFlame)
	{
		motion_add(ang,2.7);
		image_angle = direction
		team = other.team
	}
	ang += 60;
}