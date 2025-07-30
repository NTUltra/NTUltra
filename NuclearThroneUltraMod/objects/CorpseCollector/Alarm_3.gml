/// @description Optimization check
alarm[3] = 90;

if !instance_exists(GenCont) && !instance_exists(DramaCamera) && fps_real < min(44,fps)
{
	consistentLowFps += 1;
	if consistentLowFps > 3 || fps_real < 25
	{
		consistentLowFps = 4;
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
}
else
{
	consistentLowFps = 0;	
}