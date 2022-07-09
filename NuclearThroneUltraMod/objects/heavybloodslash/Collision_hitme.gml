var inArray = array_contains(hitEntities,other.id)
if other.team != team
{
	hitEnemy = true;
	if (!inArray || other.sprite_index != other.spr_hurt)
	{
		if !inArray
			hitEntities[array_length(hitEntities)] = other.id;
		alarm[1] = hitDelay;
		with other
		{
			my_health-=other.dmg;
			var ang = other.image_angle;
			repeat(3)
			{
				instance_create(x+lengthdir_x(6,ang),y+lengthdir_y(6,ang),MeatExplosion);
				ang += 120;
			}
			snd_play(snd_hurt, hurt_pitch_variation)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
			
			BackCont.shake += 6
		}
	}
}
