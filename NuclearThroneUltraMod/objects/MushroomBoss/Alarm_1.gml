///@description AI
if alarm[2] > 0 || alarm[3] > 0 || alarm[4] > 0 || alarm[5] > 0 || alarm[6] > 0
{
	alarm[1] = 2;
	exit;
}
alarm[1] = actTime + random(actTime)
scrTarget()
if !reachedHalfHealth && my_health < maxhealth*0.6 && didTheThing < 4
{
	event_user(3);
	exit;
}
if target != noone {
	var ran = random(100);
    if !collision_line(x, y, target.x, target.y, Wall, 0, 0) {
		//Reshuffle the stage / Toxic floor tiles attack
		//Shift to toxic / earth
		//Send out the healing buddies
		//Run to another prop (if there is one)
		//Spam some projectiles for the fun
		var dis = point_distance(target.x, target.y, x, y)
		if dis < 250
			alarm[1] -= actTime * 0.5;
        if dis < 128 - (didTheThing * 32) && mode == 1
		{
			if ran < 25 && my_health > maxhealth * 0.2 && didTheThing < 3
				event_user(3)
			else
				event_user(0);
		}
		else
		{
			var ran = random(100);
			if ran > 75
			{
				event_user(1);
			}
			else if ran > 50
			{
				event_user(2);
			}
			else if ran > 25 && didTheThing < 2
			{
				event_user(3);
			}
			else
			{
				event_user(0);
			}
		}
    }
	else
	{
		//Big long range attack
		if random(100) < 40
		{
			event_user(2);
		}
		else
		{
			event_user(1);
		}
	}
}