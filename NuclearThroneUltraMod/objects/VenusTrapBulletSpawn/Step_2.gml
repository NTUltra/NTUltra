/// @description Half position
x -= hspeed * 0.5;
y -= vspeed * 0.5;
if place_meeting(x,y+vspeed,Wall)
	vspeed *= -1;