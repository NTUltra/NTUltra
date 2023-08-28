/// @description Move it
if other.team != 0 && other.canBeMoved{
	var s = acc// * 0.5;
	if UberCont.normalGameSpeed == 60
		s *= 0.5;
	switch(image_angle)
	{
		case 0:
			with other {
				//if !place_meeting(x+s,y,WallHitMe)
					x += s;
			}
		break;
		case 90:
			with other {
				//if !place_meeting(x,y-s,WallHitMe)
					y -= s;
			}
		break;
		case 180:
			with other {
				//if !place_meeting(x-s,y,WallHitMe)
					x -= s;
			}
		break;
		case 270:
			with other {
				//if !place_meeting(x,y+s,WallHitMe)
					y += s;
			}
		break;
		with other
		{
			scrForcePosition60fps();
			motion_add(point_direction(x,y,other.x,other.y),s);
		}
	}
}