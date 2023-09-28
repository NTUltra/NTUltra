///scr60fpsHack();
// /@description
///@param
function scr60fpsHack(dt){
	//x = xprevious + (x - xprevious) * 0.5;
	//y = yprevious + (y - yprevious) * 0.5;
	
	if speed > 0
	{
		speed += friction*dt;
		if speed > friction
		{
			//x -= hspeed*dt;
			//y -= vspeed*dt;
			x = xprevious + ((x - xprevious) * dt);
			y = yprevious + ((y - yprevious) * dt);
		}
	}

	image_index = clamp(0,image_index - image_speed*dt,image_number);
	/*
	var i = 0;
	repeat(13)
	{
		alarm[i] += dt;
		i++;
	}*/
}