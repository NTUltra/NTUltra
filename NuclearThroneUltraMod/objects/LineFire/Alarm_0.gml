if instance_exists(Player)
{
	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction);
	}

move_contact_solid(direction,16)

/*repeat(4){
with instance_create(x,y,Smoke)
motion_add(random(360),random(4))
}*/


//instance_create(x,y,Explosion);
Sleep(20)
dir = 0
do {dir += 1 x += lengthdir_x(3,direction) y += lengthdir_y(3,direction)
	scrForcePosition60fps();
//repeat(2){
with instance_create(x,y,Flame)
{motion_add(random(360),0.5+random(2))
team = other.team
move_contact_solid(direction,4)}
//}

}
until dir > 100 or place_meeting(x,y,Wall)
alarm[1] = 2

speed = 3
}

/* */
/*  */
