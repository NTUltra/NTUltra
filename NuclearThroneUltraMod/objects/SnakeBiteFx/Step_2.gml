/// @description stay on player
if UberCont.normalGameSpeed == 60
	imageIndex += 0.2;
else
	imageIndex += 0.4;
with Player
{
	other.x = x;
	other.y = y;
}
