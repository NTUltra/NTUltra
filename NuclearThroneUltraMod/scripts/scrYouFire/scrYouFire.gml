function scrYouFire() {
	if target > 0 && instance_exists(target)
	{
		aimX = target.x;
		aimY = target.y;
		alarm[6] = 1;
	}
}
