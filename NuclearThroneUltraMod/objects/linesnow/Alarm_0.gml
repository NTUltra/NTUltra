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
do {dir += 1 x += lengthdir_x(5,direction) y += lengthdir_y(5,direction)

with instance_create(x,y,IceFlame)
{motion_add(random(360),0.5+random(2))
team = other.team
scrCopyWeaponMod(other);
move_contact_solid(direction,4)}

}
until dir > 50 or place_meeting(x,y,Wall)
alarm[1] = 2
	scrForcePosition60fps();
speed = 3
}

/* */
/*  */
