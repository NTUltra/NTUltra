with other
{
	if instance_exists(Player)
	{
	    var s = 0.07 + clamp(mySize*0.01,0,0.07);
		x = xprevious+hspeed*s;
		y = yprevious+vspeed*s;
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

