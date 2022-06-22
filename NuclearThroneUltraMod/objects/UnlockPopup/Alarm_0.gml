instance_destroy();
with UnlockPopup
{
	if id != other.id
	{
		drawtext=false;
		image_index=0;
		image_speed = 0;
		alarm[0] += 70;
	}
}
with  UnlockPopup
{
	if id != other.id
	{
		image_speed = 0.4;
		continue;
	}
}
