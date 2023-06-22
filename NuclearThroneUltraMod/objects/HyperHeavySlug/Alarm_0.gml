if instance_exists(Player)
{
	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction);
	}

	move_contact_solid(direction,16)

	Sleep(50)
	dir = 0
	do {dir += 1 x += lengthdir_x(4,direction) y += lengthdir_y(4,direction)
	if(random(4)<1){
	with instance_create(x,y,Smoke)
	motion_add(random(360),random(2))
	}

	}
	until dir > 100 or place_meeting(x,y,Wall) or place_meeting(x,y,hitme)
	alarm[1] = 2



	speed = 4
	if (UberCont.normalGameSpeed == 60)
	{
		x = x + ((x - xprevious));
		y = y + ((y - yprevious));
	}
}

