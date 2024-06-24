/// @description Move camera down
cameraTime -= 0.02;
if cameraTime > 1
	cameraTime = 1;
else
	alarm[1] = 1;
