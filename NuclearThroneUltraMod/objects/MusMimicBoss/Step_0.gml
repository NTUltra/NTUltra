/// @description Precise timing
if UberCont.normalGameSpeed == 60
{
	timer -= 0.5;
	songTime += 0.01666666666666666666666666666667;
}
else
{
	timer -= 1;
	songTime += 0.03333333333333333333333333333333;
}
if songTime >= songDuration
	songTime = 0;

if timer <= 0
{
	timer = beatTime;
	trackIndex += 1;
	var al = array_length(tracks);
	if trackIndex >= al
	{
		trackIndex = 0;	
	}
	event_user(0);
}