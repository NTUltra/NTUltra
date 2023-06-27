/// @description Spirals
event_inherited();
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
if abs(angleDir > 1)
{
	direction += angleDir*dt;
	angleDir -= 0.6*sign(angleDir)*dt;
}