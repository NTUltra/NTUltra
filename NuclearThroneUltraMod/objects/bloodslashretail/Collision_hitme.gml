if other.team != team
{
	var inArray = array_contains(hitEntities,other.id);
	var dir = direction;
	hitEnemy = true;
	with BloodSlashRetail
		hitEnemy = true;
	if (!inArray || other.sprite_index != other.spr_hurt)
	{
		if !inArray
			hitEntities[array_length(hitEntities)] = other.id;
			event_user(0);
		alarm[1] = hitDelay;
		with other
		{
			DealDamage(other.dmg);
			if other.alarm[2] < 1
			{
				with instance_create(x,y,other.explosionType)
				{
					motion_add(dir,1);
				}
			}
			snd_play(snd_hurt, hurt_pitch_variation)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
			
			BackCont.shake += 5
		}
		with BloodSlashRetail
			alarm[2] = hitDelay;
	}
}
