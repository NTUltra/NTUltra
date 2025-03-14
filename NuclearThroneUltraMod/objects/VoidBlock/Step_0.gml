/// @description Scale
if UberCont.normalGameSpeed == 60
	image_xscale += 0.005;
else
	image_xscale += 0.01;
if image_xscale > 1.5
	image_xscale = 1.5;
image_yscale = image_xscale;