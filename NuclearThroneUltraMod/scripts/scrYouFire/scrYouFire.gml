function scrYouFire() {
	if target != noone && instance_exists(target)
	{
		aimX = target.x;
		aimY = target.y;
		alarm[6] = 1;
	}
}
