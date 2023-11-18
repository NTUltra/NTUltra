/// @description Disappear blinking
if fps_real < fps
{
	visible = !visible;
	alarm[1] = disappearTime;
	if disappearTime < 1
	{
		visible = false;	
	}
	disappearTime -= 1;
}
else
{
	visible = true;
	disappearTime = 5;
}