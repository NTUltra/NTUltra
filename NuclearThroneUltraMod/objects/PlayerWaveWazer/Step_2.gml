/// @description Aim offset
if UberCont.normalGameSpeed == 60
{
	time += waveSpeed*0.5;
}
else
{
	time += waveSpeed;
}
if isSin
{
	if isFlip
		aimOffset = sin(time) * -maxRange * accuracy;
	else
		aimOffset = sin(time) * maxRange * accuracy;
}
else
{
	if isFlip
		aimOffset = cos(time) * -maxRange * accuracy;
	else
		aimOffset = cos(time) * maxRange * accuracy;
}
// Inherit the parent event
event_inherited();

