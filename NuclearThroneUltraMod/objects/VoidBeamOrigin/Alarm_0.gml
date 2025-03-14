/// @description Funny scaling and rotating
time += timeScale
if time > 1 || time <= 0
	timeScale *= -1;
var lp = lerp(1,-1,time);
xScale = image_xscale + cos(lp)*0.2;
yScale = image_yscale + sin(lp)*0.2;
image_angle += rotation;
if UberCont.normalGameSpeed == 60
{
	image_speed = 0.15;
	alarm[0] = 2;
}
else
{
	image_speed = 0.3;
	alarm[0] = 1;
}