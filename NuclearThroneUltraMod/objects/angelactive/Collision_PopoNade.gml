/// @description Hitting back nade
with other
{
	if !gotHit
	{
		gotHit = true;
		team=other.team;
		point_direction(other.x,other.y,x,y);
		speed = 12
		friction = 0.1
		alarm[1] = 6
		Sleep(10);
		BackCont.shake += 5;
		with instance_create(x,y,Deflect)
		{
			image_angle = other.direction
			sprite_index=sprGuardianDeflect;
		}
			
	}
}

