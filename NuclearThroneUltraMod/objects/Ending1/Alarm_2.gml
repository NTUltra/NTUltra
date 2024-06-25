/// @description Move camera down
cameraTime -= 0.01;
if cameraTime < 0
	cameraTime = 0;
else
	alarm[2] = 1;
