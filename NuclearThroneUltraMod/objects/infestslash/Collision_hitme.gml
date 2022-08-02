var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
	alarm[1] = hitDelay;
	with other
	{
		my_health-=other.dmg;
		snd_play(snd_hurt, hurt_pitch_variation)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		BackCont.shake += 5
		
		snd_play(sndMeatExplo,0.1,true);
		instance_create(x,y,MeatExplosion);
		snd_play(sndTermite,0.3,true)
		var ang = random(360);
		var am = 2;
		var angStep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,Termite)
			{
				motion_add(ang,4+irandom(8))
				team = other.team
			}
			ang += angStep;
		}

		ang = random(360);

		with instance_create(x,y,BloodStreak)
		image_angle = ang

		with instance_create(x,y,BloodStreak)
		image_angle = ang+120

		with instance_create(x,y,BloodStreak)
		image_angle = ang+240
	}
}
