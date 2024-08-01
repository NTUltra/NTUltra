///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
	var ran = random(100);
    if !collision_line(x, y, target.x, target.y, Wall, 0, 0) {
		//Reshuffle the stage / Toxic floor tiles attack
		//Shift to toxic / earth
		//Send out the healing buddies
		//Run to another prop (if there is one)
		//Spam some projectiles for the fun
		var dis = point_distance(target.x, target.y, x, y)
        if dis < 64 && mode == 1
		{
			event_user(0);	
		}
		else
		{
			var ran = random(100);
			if ran > 75
			{
				event_user(1);
			}
		}
    }
	else
	{
		//Big long range attack
		event_user(1);
	}
}