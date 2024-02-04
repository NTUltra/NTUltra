var inArray = array_contains(hitEntities,other.id)
if other.team != team
{
	hitEnemy = true;
	with BloodSlashRetail
		hitEnemy = true;
	if (!inArray || other.sprite_index != other.spr_hurt)
	{
		if !inArray
			hitEntities[array_length(hitEntities)] = other.id;
		alarm[1] = hitDelay;
		with other
		{
			my_health -= other.dmg;
			if other.alarm[2] < 1
				instance_create(x,y,MeatExplosion);
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
