if KeyCont.key_spec[p] = 1
{

	if instance_exists(creator)
	{
		x = creator.x
		y = creator.y
	}
	with Corpse
	{
		if image_speed = 0 and (instance_number(enemy) > 0 or instance_exists(Portal)) and point_distance(x,y,other.x,other.y) < 300
		{

		snd_play(sndExplosion)

		instance_destroy()
		with instance_create(x,y,BloodStreak)
		{
		motion_add(point_direction(other.x,other.y,x,y),8)
		image_angle = direction
		}
		instance_create(x,y,Scorchmark)
		instance_create(x,y,MeatExplosion)}
	}
	snd_play(sndCorpseExploDead)
	instance_destroy()
	instance_create(x,y,MeltGhost)
}


