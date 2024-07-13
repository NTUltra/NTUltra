/// @description Lob it
// Inherit the parent event
event_inherited();
alarm[1] = 0;
alarm[0] = 50;
alarm[3] = alarm[0] - 12;
alarm[9] = 0;
scale = 1;
growRate = 0.125;
maxScale = 2;
alarm[2] = 7;//Up
friction = 0;
bounce = false;
rotationSpeed = 20;
if hspeed > 0
	rotationSpeed = -20;
accuracy = 1;