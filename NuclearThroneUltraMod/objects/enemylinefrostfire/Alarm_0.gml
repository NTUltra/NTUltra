move_contact_solid(direction,16)


dir = 0
do {dir += 1 x += lengthdir_x(4,direction) y += lengthdir_y(4,direction)


with instance_create(x,y,EnemyIceFlame)
{motion_add(random(360),0.6)
team = other.team
move_contact_solid(direction,0.3)
ignoreHitme=true;}


}
until dir > 100 or place_meeting(x,y,Wall)
alarm[1] = 2
	if (UberCont.normalGameSpeed == 60)
	{
		x = x + ((x - xprevious));
		y = y + ((y - yprevious));
	}
//speed = 4

