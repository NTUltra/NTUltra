/// @description circle it
event_inherited();
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
if abs(angleDir > 1)
{
	direction += angleDir*dt;
	angleDir -= 0.5*sign(angleDir)*dt;
}

image_angle = direction;