/// @description damage and knock back
if other.team != team && !array_contains(hitEntities,other.id)
{
	hitEntities[array_length(hitEntities)] = other.id;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg);
		sprite_index = spr_hurt
		image_index = 0
		with instance_create(x,y,Dust)
			motion_add(other.direction+random_range(20,-20),5);
		motion_add(other.direction,6)
		if team != 0
		with instance_create(x,y,KnockbackDontBreakWalls)
		{
			target = other.id;
			pushDirection = other.direction;
			pushStartX = target.x;
			pushStartY = target.y;
			var s = target.mySize;
			if s == 4
				s = 5;
			pushX = target.x + lengthdir_x(pushStrength/max(1,s*0.5),pushDirection);
			pushY = target.y + lengthdir_y(pushStrength/max(1,s*0.5),pushDirection);
		}
	}
}

