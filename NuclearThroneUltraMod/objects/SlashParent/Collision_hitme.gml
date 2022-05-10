if other.team != team && !array_contains(hitEntities,other.id)
{
	hitEntities[array_length(hitEntities)] = other.id;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		snd_play(other.snd_hit,0.1,true);
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		Sleep(other.sleepRate+size*10)
		BackCont.shake += 5
	}
	alarm[1] = hitDelay;
}

