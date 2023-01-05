/// @description Alpha handler
if alarm[1] > 0
	alpha = clamp(alpha + 0.1,0,1);
else
	alpha = clamp(alpha - 0.1,0,1);