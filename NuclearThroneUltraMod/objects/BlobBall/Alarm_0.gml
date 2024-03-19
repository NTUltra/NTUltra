/// @description Funny scaling and rotating
time += timeScale
if time > 1 || time <= 0
	timeScale *= -1;
var lp = lerp(1,-1,time);
xScale = 1 + cos(lp)*0.2;
yScale = 1 + sin(lp)*0.2;
image_angle += rotation;
alarm[0] = 1;