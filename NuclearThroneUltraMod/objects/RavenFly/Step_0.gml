if sprite_index = sprRavenLift
{
		if UberCont.normalGameSpeed == 60
			z -= 1.5;
		else
			z -= 3;
}
else if sprite_index = sprRavenLand
{
	if UberCont.normalGameSpeed == 60
		z += 1.5;
	else
		z += 3;
}
else if sprite_index = sprRavenFly
{
	speed = 0
	var s = 6;
	if UberCont.normalGameSpeed == 60
		s = 3;
	x += lengthdir_x(s,point_direction(x,y,targetx,targety))
	y += lengthdir_y(s,point_direction(x,y,targetx,targety))
}
else
	sprite_index = sprRavenLand;
if my_health <= 0
	instance_change(Raven,false)