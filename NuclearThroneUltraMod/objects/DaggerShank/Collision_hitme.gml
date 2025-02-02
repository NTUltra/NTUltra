/// @description Damage more when not in line of sight?
if other.team != team
{
	var inArray = array_contains(hitEntities,other.id)
	if (!inArray || other.sprite_index != other.spr_hurt)
	{
		if alarm[1] < 1
		{
			if !inArray
				hitEntities[array_length(hitEntities)] = other.id;
			event_user(0);
			var d = dmg;
			with other
			{
				if my_health > 0
				{
					if other.owner != noone && instance_exists(other.owner)
					{
						if (right > 0 && (other.owner.x < x || other.x < x))
						{
							BackCont.shake += 5;
							BackCont.viewx2 -= 10*UberCont.opt_shake
							d *= 2;
						}
						else if (right < 0 && (other.owner.x > x || other.x > x))
						{
							BackCont.shake += 5;
							BackCont.viewx2 += 10*UberCont.opt_shake
							d *= 2;
						}
					}
					snd_play(snd_hurt, hurt_pitch_variation,true)
					DealDamage(d)
					sprite_index = spr_hurt
					image_index = 0
					motion_add(other.direction,other.knockback)
					if speed > maxSpeed+1
						speed = maxSpeed+1;
				}
			}
			BackCont.shake += shk;
			alarm[1] = hitDelay;
		}
		else
		{
			alarm[1] = 1;	
		}
	}
}
