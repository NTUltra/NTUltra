
image_angle += 8+sin(image_angle/300)*1

time += 1

x = room_width/2+sin(image_angle/921)*sin(image_angle/500)*80
y = room_height/2+cos(image_angle/583)*sin(image_angle/500)*50

if random(4) < 1
{
	if random(3) < 1
	{
	with instance_create(x,y,SpiralDebris)
		depth = other.depth + other.image_angle
	}
}



	//var t = type;
	with instance_create(x,y,Spiral)
	{
	image_xscale = 0
	image_yscale = 0
	depth = other.depth + other.image_angle
	image_angle = other.image_angle
	/*
	if t = 3
	{
	sprite_index = sprSpiralIDPD
	if round(other.time/10) = other.time/10 or round((other.time-1)/10) = (other.time-1)/10
	sprite_index = sprSpiralIDPD2
	}
	else if t = 2
	{
	image_xscale = random(0.01)
	image_yscale = random(0.01)
	sprite_index = sprSpiralProto
	image_angle = other.image_angle
	//image_angle = random(360)
	}
	else if t = 5
	{
	sprite_index = sprSpiralInverted
	//image_angle = random(360)
	}
	else if t = 6
	{
	sprite_index = sprSpiralPink
	//image_angle = random(360)
	}*/
}
