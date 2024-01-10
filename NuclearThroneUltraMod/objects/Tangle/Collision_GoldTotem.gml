/// @description xxx
with other
{
	if instance_exists(Player)
	{
	    if Player.skill_got[5] = 1
	    {
		    if my_health <= maxhealth*0.36//Plant thronebutt
		    {
				snd_play(sndPlantTBKill);
			    with instance_create(x,y,PlantThronebutt)
					image_angle=random(360);
			    my_health = 0
			    motion_add(point_direction(Player.x,Player.y,x,y),5)
		    }
	    }
	}
}