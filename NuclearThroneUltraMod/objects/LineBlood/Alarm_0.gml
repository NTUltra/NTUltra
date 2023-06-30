if instance_exists(Player)
{
	if (aimed=false && team == 2)
	{
		aimed=true;
		direction = scrAimAssistLaser(direction);
	}

move_contact_solid(direction,16)

repeat(4){
with instance_create(x,y,Smoke)
motion_add(random(360),random(4))
}
//instance_create(x,y,Explosion);
Sleep(20)
dir = 0
do {dir += 1 x += lengthdir_x(step,direction) y += lengthdir_y(step,direction)
	var randir = random(360);
	with instance_create(x+lengthdir_x(4,randir),y+lengthdir_y(4,randir),MeatExplosion)
		scrCopyWeaponMod(other);
if(random(6)<1){
with instance_create(x,y,Smoke)
motion_add(random(360),random(2))
}

}
until dir > 100 or (!pierceWall && place_meeting(x,y,Wall))
alarm[1] = 2

	scrForcePosition60fps();
speed = 4
}

