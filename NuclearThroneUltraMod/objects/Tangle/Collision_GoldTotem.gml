/// @description xxx
with other
{
	if instance_exists(Player)
	{
	    if Player.skill_got[5] = 1
	    {
			var baseDmg = maxhealth*0.35;
			var actualDmg = scrCalculateFinalDamage(baseDmg)
		    if my_health <= actualDmg//Plant thronebutt
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