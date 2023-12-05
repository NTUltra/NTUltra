///@description ExistTime
existTime ++;
if gettingKnocked > 0
{
	var is60fps = (UberCont.normalGameSpeed == 60)
	if is60fps
		gettingKnocked -= 0.5;
	else
		gettingKnocked -= 1;
}