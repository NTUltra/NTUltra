/// @description Hook
event_inherited();
if speed > 5
{
	var acc = instance_exists(Player) ? Player.accuracy : 1;
	if UberCont.normalGameSpeed == 60
		direction += 2*hook*acc;
	else
		direction += 4*hook*acc;
}