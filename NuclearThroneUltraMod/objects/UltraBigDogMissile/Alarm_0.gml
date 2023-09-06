/// @description shooting

with instance_create(x,y,ExploGuardianBullet)
{
	motion_add(other.direction,3.5)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,ExploGuardianBullet)
{
	motion_add(other.direction + 180,4)
	image_angle = direction
	team = other.team
}
alarm[0] = 12;