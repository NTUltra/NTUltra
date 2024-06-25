/// @description Move camera up
cameraTime += 0.01;
if cameraTime > 1
	cameraTime = 1;
else
	alarm[1] = 1;
