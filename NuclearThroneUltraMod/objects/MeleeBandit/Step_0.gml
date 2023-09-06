event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
	if target > 0
		mp_potential_step(target.x,target.y,acc,false)
}

if dodge > -dodgeCooldown
{
	if UberCont.normalGameSpeed == 60
	{
		dodge -= 0.5
		if dodge > 0
		{
			if round(dodge) == dodge
				sprite_index=spr_walk;
			move_contact_solid(direction,dodgeAcc*0.5)
		}
	}
	else
	{
		dodge -= 1;
		if dodge > 0
		{
			sprite_index=spr_walk;
			move_contact_solid(direction,dodgeAcc)
		}
	}
}
else if canDodge && point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y) < dodgeRange and not alarm[2] > 0 {
	//if mouse_check_button_pressed(mb_left) and target > 0
	if target > -1 && instance_exists(target) && instance_exists(Player) && Player.fired
	{
		event_user(0);
	}
}


if speed > maxSpeed
speed = maxSpeed;