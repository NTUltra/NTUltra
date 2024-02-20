/// @description Boiling veins extra range
alarm[3] = 1;
var ii = image_index;
image_index = 1;
if place_meeting(x,y,Player)
{
	with Player
	{
		boilingAmount = max(boilingAmount,boilingMax * 0.5);
		if alarm[4] < 1
			alarm[4] = 1;
	}
}
image_index = ii;