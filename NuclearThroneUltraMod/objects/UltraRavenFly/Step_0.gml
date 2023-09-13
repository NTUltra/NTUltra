if sprite_index = sprUltraRavenLift
{
	if UberCont.normalGameSpeed == 60
		z -= 1.5;
	else
		z -= 3;
	if alarm[3] < 1
		alarm[3] = 1;
}
else if sprite_index = sprUltraRavenLand
{
	if UberCont.normalGameSpeed == 60
		z += 1.5;
	else
		z += 3;
}
else if sprite_index = sprUltraRavenFly
{
	speed = 0
	var s = 5;
	if UberCont.normalGameSpeed == 60
		s = 2.5;
	x += lengthdir_x(s,point_direction(x,y,targetx,targety))
	y += lengthdir_y(s,point_direction(x,y,targetx,targety))
}
else
	sprite_index = sprUltraRavenLand;
if my_health <= 0
	scrChangeRaven(UltraRaven)
image_xscale = right;