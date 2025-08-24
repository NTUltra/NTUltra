/// @description Delay
with instance_create(x,y,CrystalShieldDelay) {
	if other.alarm[2] > 0
	{
		alarm[0] -= max(5, other.alarm[2] - 4);
		alarm[0] = max(6,alarm[0]);
	}
}