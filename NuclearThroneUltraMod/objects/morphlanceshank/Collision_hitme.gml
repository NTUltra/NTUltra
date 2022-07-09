var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
	
	alarm[1] = hitDelay;
	if instance_exists(Player){
	if Player.skill_got[17] = 1
	snd_play(sndMorphStart)
	else
	snd_play(sndMorphStop)
	}
	else
	snd_play(sndMorphStop)


	with other
	{
		my_health-=other.dmg;
		instance_create(x,y,Morph);
		snd_play(snd_hurt, hurt_pitch_variation)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		
		BackCont.shake += 5
	}
}
