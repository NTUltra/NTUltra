/// @description Move it
if other.team != 0 {
	var s = acc/other.mySize;
	//if UberCont.normalGameSpeed == 60
	//	s *= 0.5;
	/*
	with other
	{
		scrForcePosition60fps();	
	}*/
	switch(image_angle)
	{
		case 0:
			with other {
				if !place_meeting(x+s,y,WallHitMe)
					x += s;
			}
		break;
		case 90:
			with other {
				if !place_meeting(x,y-s,WallHitMe)
					y -= s;
			}
		break;
		case 180:
			with other {
				if !place_meeting(x-s,y,WallHitMe)
					x -= s;
			}
		break;
		case 270:
			with other {
				if !place_meeting(x,y+s,WallHitMe)
					y += s;
			}
		break;
	}
}