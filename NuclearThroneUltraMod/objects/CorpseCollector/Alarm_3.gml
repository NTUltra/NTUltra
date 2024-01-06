/// @description Optimization check
alarm[3] = 90;

if !instance_exists(GenCont) && !instance_exists(DramaCamera) && fps_real < fps
{
	if visible && alarm[1] < 1
	{
		alarm[1] = 5;
	} else with TopCont
	{
		bloom = false;	
	}
	visible = false;
	with Top
	{
		instance_destroy();
	}
	with TopSmall
	{
		instance_destroy();	
	}
}