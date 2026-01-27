with other
{
	if instance_exists(Player)
	{
	    var s = 0.07 + clamp(mySize*0.01,0,0.07);
		x = xprevious+hspeed*s;
		y = yprevious+vspeed*s;
	    if Player.skill_got[5] && !totemImmune && my_health > 0
	    {
			var baseDmg = maxhealth*0.35;
			var actualDmg = scrCalculateFinalDamage(baseDmg)
		    if  my_health <= actualDmg//Plant thronebutt
		    {
				snd_play(sndPlantTBKill);
			    with instance_create(x,y,PlantThronebutt)
					image_angle=random(360);
				DealDamage(baseDmg,false,true,false);
			    motion_add(point_direction(Player.x,Player.y,x,y),5)
		    }
	    }
	}
}

