/// @description Curse & gold fx
with Player
{
	if visible 
	{
		other.x = x;
		other.y = y;
		//cursed weps
		if curse = 1
		{

			instance_create(x+lengthdir_x(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))+random(6)-3,
			y+lengthdir_y(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))+random(6)-3,Curse)

		}

		//golden weps
		if scrCheckGold(wep_name[wep])
		{
			with instance_create(x+lengthdir_x(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))+random(6)-3,
			y+lengthdir_y(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))+random(6)-3,CaveSparkle){
			image_angle=random(360);
			depth=-8}
		}
	}
}
alarm[0] = checkDelay;