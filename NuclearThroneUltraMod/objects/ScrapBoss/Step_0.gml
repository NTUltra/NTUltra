event_inherited()

if speed > maxSpeed
speed = maxSpeed

if walk > 0
{
	walk -= 1
	motion_add(direction,0.5)
	if target != noone
	motion_add(point_direction(x,y,target.x,target.y),0.5)
	if sprite_index != spr_hurt
		sprite_index = spr_walk
	if round(walk/10) = walk/10
	snd_play(sndBigDogWalk)
		if walk == 0 && sprite_index != spr_hurt
			sprite_index = spr_idle
}

if ammo > 0
{
	if sprite_index != spr_fire and sprite_index != spr_hurt
	{
		speed = 0
		sprite_index = spr_idle
	}
	speed = maxSpinSpeed
}
if alarm[1] > 0 && spr_idle == spr_actual_idle && sprite_index != spr_hurt
	sprite_index = spr_fire;
if my_health < maxhealth*0.6 and sndhalfhp = 0
{
	event_user(2);
snd_play(sndBigDogTaunt)
sndhalfhp = 1
}

if !instance_exists(Player) and sndtaunt = 0
{
	if UberCont.normalGameSpeed == 60
		tauntdelay += 0.5;
	else
		tauntdelay += 1
	if tauntdelay > 50
	{
	snd_play(sndBigDogTaunt)
	sndtaunt = 1
	}
}

