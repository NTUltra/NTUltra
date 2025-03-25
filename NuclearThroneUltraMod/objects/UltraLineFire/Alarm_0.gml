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
do {dir += 1 x += lengthdir_x(4,direction) y += lengthdir_y(4,direction)
	scrForcePosition60fps();
//repeat(2){
with instance_create(x,y,UltraFlame)
{motion_add(random(360),1+random(2))
team = other.team
scrCopyWeaponMod(other);
move_contact_solid(direction,4)}
//}

}
until dir > 50 or place_meeting(x,y,Wall)
alarm[1] = 2

speed = 3
}

/* */
/*  */
