/// @description Fijaaa

// Inherit the parent event
event_inherited();

if dmg > 29
{
	with instance_create(x,y,Flame)
	{
		team = other.team
		image_speed = 0.5;
		motion_add(other.direction,3);
	}
}
if hasHit == 0
{
	with BulletScaler
	{
		dmg = max(0,dmg - 3);
	}
}
else if hasHit == 1
{
	with BulletScaler
	{
		dmg += 1;	
	}
}