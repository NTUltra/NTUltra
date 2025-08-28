/// @description GAIN BARRIER
alarm[0] = 40;
alarm[1] = max(0,(instance_number(GainExcessResource) - 1) * 2);
owner = noone;
surface = -1;
scale = 0.5;
alpha = 0.3;
alphaIncrease  = 0.2;
scaleIncrease = 0.275;
fullTimeDelay = 4;
colour = [0.98,0.72,0];
shaderColour = 0;
if UberCont.canShader
{
	instance_destroy();
}
else
{
	shaderColour = shader_get_uniform(shdDrawColour, "f_colour");
}