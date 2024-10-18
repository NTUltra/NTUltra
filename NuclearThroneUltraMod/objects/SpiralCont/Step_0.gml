/// @description FPS spiral
if alarm[1] < 1
{
	var newSpiral = noone;
	var is60fps = UberCont.normalGameSpeed == 60 ? 0.5 : 1
	if type = 2
		image_angle += (2+sin(image_angle/300)*2+random(1)) * is60fps;
	else if type = 5
		image_angle += (8-sin(image_angle/300)*1) * is60fps;
	else
		image_angle += (8+sin(image_angle/300)*1) * is60fps;

	time += 1* is60fps

	if type = 2
	{
		x = room_width/2+sin(image_angle/921)*sin(image_angle/500)*70+sin(image_angle/30)*(20+sin(image_angle/40)*5)+random(2)-1
		y = room_height/2+cos(image_angle/583)*sin(image_angle/500)*40+cos(image_angle/30)*(20+sin(image_angle/40)*5)+random(2)-1
	}
	else
	{
		x = room_width/2+sin(image_angle/921)*sin(image_angle/500)*80
		y = room_height/2+cos(image_angle/583)*sin(image_angle/500)*50
		y -= 32;
	}

	if type = 4
	{
		x = room_width*0.5
		y = room_height*0.5
	}

	if type != 4 && type != 7 && random(4) < 1 
	{
		if type = 2 or (random(3) < 1)
		{
			with instance_create(x,y,SpiralDebris)
				depth = other.image_angle
		}
	}


	if type = 4
	{
		instance_create(x,y,SpiralStar)
	}
	else
	{
		var t = type;
		newSpiral = instance_create(x,y,Spiral)
		with newSpiral {
			image_xscale = 0
			image_yscale = 0
			depth = other.image_angle
			image_angle = other.image_angle
			type = t;
			if type = 3
			{
				sprite_index = sprSpiralIDPD2
				if round(other.time/10) = other.time/10 or round((other.time-1)/10) = (other.time-1)/10
					sprite_index = sprSpiralIDPD
			}
			else if type = 2
			{
				image_xscale = random(0.01)
				image_yscale = random(0.01)
				sprite_index = sprSpiralProto
				image_angle = other.image_angle
				//image_angle = random(360)
			}
			else if type = 5
			{
				sprite_index = sprSpiralInverted
				//image_angle = random(360)
			}
			else if type = 6
			{
				sprite_index = sprSpiralPink
				//image_angle = random(360)
			}
			else if type = 7
			{
				sprite_index = sprSpiralVoid
				//image_angle = random(360)
			}
		}
	}
	if !instance_exists(LevCont) and !instance_exists(GenCont)
	{
		alarm[1] = 10;
		with Spiral
		{
			speedUp = true;
		}
		with newSpiral
		{
			image_index = 1;	
		}
		with StartingGameLockout
			instance_destroy();
	}
}