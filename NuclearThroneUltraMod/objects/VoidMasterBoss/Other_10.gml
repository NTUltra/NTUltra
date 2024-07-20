/// @description I am about to fuck you up DASH
gunangle = point_direction(x,y,target.x,target.y);
wepangle = 0;
walk = tellTime;
direction = gunangle;
speed = acc;
alarm[1] += tellTime;
alarm[2] = tellTime;
alarm[3] = tellTime - 20;
snd_play(sndVoidEyeCreeping);
if target.x > x
	right = -1
else
	right = 1