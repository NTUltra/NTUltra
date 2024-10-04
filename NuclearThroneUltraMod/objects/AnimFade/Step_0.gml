/// @description Fade in
if UberCont.normalGameSpeed == 60
{
	image_alpha += fade * 0.5;
}
else
{
	image_alpha -= fade
}
if image_alpha >= 1
	instance_destroy();