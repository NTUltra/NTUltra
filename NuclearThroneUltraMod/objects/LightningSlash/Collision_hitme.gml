var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
		
	alarm[1] = hitDelay;
	snd_play(snd_hit,0.1,true);

	with instance_create(other.x,other.y,Lightning)
	{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(30)-15)
	team = other.team
	ammo = 10
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	with other
	{
		my_health-=other.dmg;
		snd_play(snd_hurt, hurt_pitch_variation)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		Sleep(other.sleepRate+size*10)
		BackCont.shake += 5
	}
}
