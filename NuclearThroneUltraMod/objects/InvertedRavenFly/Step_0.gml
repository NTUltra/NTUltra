if sprite_index = sprInvertedRavenLift
{
	if UberCont.normalGameSpeed == 60
			z -= 1.5;
		else
			z -= 3;
	if alarm[3] < 1
		alarm[3] = 5+random(10)
}
else if sprite_index = sprInvertedRavenLand
{
	if UberCont.normalGameSpeed == 60
		z += 1.5;
	else
		z += 3;
}
else if sprite_index = sprInvertedRavenFly
{
	speed = 0
	var s = 6;
		if UberCont.normalGameSpeed == 60
			s = 3;
	x += lengthdir_x(s,point_direction(x,y,targetx,targety))
	y += lengthdir_y(s,point_direction(x,y,targetx,targety))
}
else
	sprite_index = sprInvertedRavenLand;
if my_health <= 0
	scrChangeRaven(InvertedRaven)
image_xscale = right;