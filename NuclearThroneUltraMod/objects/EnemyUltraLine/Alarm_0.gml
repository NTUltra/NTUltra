move_contact_solid(direction,16)


dir = 0
var spd = 16;
do {
	dir += 1;
	with instance_create(x,y,ExploGuardianBullet)
	{
		motion_add(other.direction, max(6,spd));
		image_angle = direction;
		team = other.team
		infiniteRange = true;
	}
	spd -= 0.25;
	x += lengthdir_x(26,direction);
	y += lengthdir_y(26,direction);
}
until dir > maxRange or place_meeting(x,y,Wall)

scrForcePosition60fps();

alarm[1] = 2

//speed = 4

