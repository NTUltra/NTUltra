if (object_index == DiscGuy)
{
	if !sleeping
	{
	snd_play(sndDiscDie);
	with instance_create(x,y,EnemyDisc)
	{motion_add(other.direction+(random(60)-30),2.75)
	image_angle = direction
	team = other.team}
	}


	scrDrop(25,1)
}
event_inherited()

