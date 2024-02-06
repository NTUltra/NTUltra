/// @description xxx
with other
{
	if instance_exists(Player)
	{
		if other.alarm[0] < 1 &&  !array_contains(other.hitEntities,id) {
			hitEntities[array_length(hitEntities)] = other.id;
			other.alarm[0] = 15;
			DealDamage(2);
			sprite_index = spr_hurt;
			image_index = 0;
			snd_play(snd_hurt, hurt_pitch_variation,true);
			with instance_create(x,y,BloodStreak)
			{
				motion_add(random(360),6 + random(4));
				image_angle = direction
			}
		}
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