/// @description Move it
if other.team != 0 && other.canBeMoved{
	var s = acc// * 0.5;
	var m = 1;
	if UberCont.normalGameSpeed == 60
	{
		s *= 0.5;
		m = 0.5;
	}
	var xc = x + 16;
	var yc = y + 16;
	switch(image_angle)
	{
		case 0:
			with other {
				x += s;
				if y > yc
					y += m;
				else
					y -= m;
			}
		break;
		case 90:
			with other {
				y -= s;
				if x > xc
					x += m;
				else
					x -= m;
			}
		break;
		case 180:
			with other {
				x -= s;
				if y > xc
					y += m;
				else
					y -= m;
			}
		break;
		case 270:
			with other {
				y += s;
				if x > xc
					x += m;
				else
					x -= m;
			}
		break;
	}
}