event_inherited()
var dt = 1;
	if UberCont.normalGameSpeed == 60
		dt = 0.5;
head1Animation += image_speed * dt;
head2Animation += image_speed * dt;
head3Animation += image_speed * dt;
if spr_head1 == spr_head1_fire
{
	if head1Animation > 3
	{
		head1Animation = 0;
		spr_head1 = spr_head1_idle;
	}
}
if spr_head2 == spr_head2_fire
{
	if head2Animation > 3
	{
		head2Animation = 0;
		spr_head2 = spr_head2_idle;
	}
}
if spr_head3 == spr_head3_fire
{
	if head3Animation > 3
	{
		head3Animation = 0;
		spr_head3 = spr_head3_idle;
	}
}
if alarm[4] > 0
	my_health = max(my_health,immuneHealth);
if alarm[2] > 0
{
	my_health = max(my_health,immuneHealth);
	motion_add(direction,acc);
	motion_add(leapDirection,leapAcc);
	if speed > leapMaxSpeed
		speed = leapMaxSpeed
	if alarm[3] > 0 || alarm[4] > 0
	{
		forceAnimation += image_speed * dt
		if forceAnimation > 4
			forceAnimation = 4;
		speed = clamp((speed * 0.8) - dt,0,0.5);
	}
}
else
{
	if walk > 0
	{
		walk -= 1
		motion_add(direction,acc)
	}

	if speed > maxSpeed
		speed = maxSpeed
}
if !firstTime && target != noone && instance_exists(target) {
	head1aim += angle_difference(gunangle + (angle_difference(270,gunangle) * 0.1), head1aim) * head1lerp * dt;
	head2aim += angle_difference(gunangle, head2aim) * head2lerp * dt;
	head3aim += angle_difference(gunangle, head3aim) * head3lerp * dt;
	if right
	{
		if dcos(head1aim) <= 0//Looking right
		{
			if dsin(head1aim) >= 0 && head1aim > 90 - head1Max//Up
			{
				head1aim = 	90 - head1Max;
			}
			else if head1aim < 270 + head1Max//Down
			{
				head1aim = 270 + head1Max;
			}
		}
		if dcos(head2aim) <= 0//Looking right
		{
			if dsin(head2aim) >= 0 && head2aim > 90 - head2Max//Up
			{
				head2aim = 	90 - head2Max;
			}
			else if head2aim < 270 + head2Max//Down
			{
				head2aim = 270 + head2Max;
			}
		}
		if dcos(head3aim) <= 0//Looking right
		{
			if dsin(head3aim) >= 0 && head3aim > 90 - head3Max//Up
			{
				head3aim = 	90 - head3Max;
			}
			else if head3aim < 270 + head3Max//Down
			{
				head3aim = 270 + head3Max;
			}
		}
	}
	else
	{
		if dcos(head1aim) >= 0//Looking left
		{
			if dsin(head1aim) <= 0 && head1aim > 90 + head1Max//Up
			{
				head1aim = 	90 + head1Max;
			}
			else if head1aim < 270 - head1Max//Down
			{
				head1aim = 270 - head1Max;
			}
		}
		if dcos(head2aim) >= 0//Looking left
		{
			if dsin(head2aim) <= 0 && head2aim > 90 + head2Max//Up
			{
				head2aim = 	90 + head2Max;
			}
			else if head2aim < 270 - head2Max//Down
			{
				head2aim = 270 - head2Max;
			}
		}
		if dcos(head3aim) >= 0//Looking left
		{
			if dsin(head3aim) <= 0 && head3aim > 90 + head3Max//Up
			{
				head3aim = 	90 + head3Max;
			}
			else if head3aim < 270 - head3Max//Down
			{
				head3aim = 270 - head3Max;
			}
		}
	}
}