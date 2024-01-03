/// @description xxx
if UberCont.normalGameSpeed == 60
	radius -= 5;
else
	radius -= 10;
if radius < 6
	instance_destroy();