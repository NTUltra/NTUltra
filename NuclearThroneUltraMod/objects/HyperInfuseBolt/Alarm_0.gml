if instance_exists(Player)
{

	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction);
	}

move_contact_solid(direction,16)

repeat(5){
with instance_create(x,y,Smoke)
motion_add(random(360),random(4))
}

Sleep(10)
dir = 0
do {dir += 1 x += lengthdir_x(4,direction) y += lengthdir_y(4,direction)

with instance_create(x,y,BoltTrail)
{
image_angle=other.direction;
image_xscale=4//other.speed;
}

with instance_create(x,y,Smoke)
motion_add(random(360),random(1))


}
until dir > 100/* or place_meeting(x,y,Wall)*/ or place_meeting(x,y,hitme)
alarm[1] = 20
	if (UberCont.normalGameSpeed == 60)
	{
		x = x + ((x - xprevious));
		y = y + ((y - yprevious));
	}
speed = 0

}

/* */
/*  */
