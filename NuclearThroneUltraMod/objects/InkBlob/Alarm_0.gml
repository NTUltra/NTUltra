/// @description Funny scaling and rotating
time += timeScale
if time > 1 || time <= 0
	timeScale *= -1;
var lp = lerp(1,-1,time);
xScale = oScale + cos(lp)*0.2;
yScale = oScale + sin(lp)*0.2;
image_angle += rotation;
alarm[0] = 1;