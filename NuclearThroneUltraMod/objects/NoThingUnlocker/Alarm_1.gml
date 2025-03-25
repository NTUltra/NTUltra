/// @description Funny scaling and rotating
time += timeScale
if time > 1 || time <= 0
	timeScale *= -1;
var lp = lerp(1,-1,time);
xScale = 1 + cos(lp)*0.15;
yScale = 1 + sin(lp)*0.15;
image_angle += rotation;
if UberCont.normalGameSpeed == 60
{
	alarm[1] = 2;
}
else
{
	alarm[1] = 1;
}