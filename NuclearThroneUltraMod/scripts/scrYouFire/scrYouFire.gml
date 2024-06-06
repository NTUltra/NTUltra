function scrYouFire() {
	if target != noone && instance_exists(target)
	{
		aimX = target.x;
		aimY = target.y;
		if alarm[6] < 1
		alarm[6] = 5;
	}
}
