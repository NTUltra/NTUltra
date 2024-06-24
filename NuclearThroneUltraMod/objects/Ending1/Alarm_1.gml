/// @description Move camera up
cameraTime += 0.02;
if cameraTime > 1
	cameraTime = 1;
else
	alarm[1] = 1;
