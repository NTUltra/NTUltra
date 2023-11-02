if instance_exists(Player)
{

	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction);
	}

	move_contact_solid(direction,16)

	dir = 0
	do {dir += 1 x += lengthdir_x(4,direction) y += lengthdir_y(4,direction)
	}
	until dir > 150 or place_meeting(x,y,Wall) or place_meeting(x,y,hitme)
	
	alarm[1] = 6
	scrForcePosition60fps();
	speed = 0
}