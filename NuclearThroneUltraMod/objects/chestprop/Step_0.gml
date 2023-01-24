if UberCont.normalGameSpeed == 60
{
	if image_index < 1
		image_index += random(0.02)
	else
		image_index += 0.2
}
else
{
	if image_index < 1
		image_index += random(0.04)
	else
		image_index += 0.4
}

if speed > 4
speed = 4

if instance_exists(GenCont)
{
x = xstart
y = ystart
}

