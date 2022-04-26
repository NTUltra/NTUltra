/// @description Init
image_speed = 0;
depth = 7;
name = "UNAVAILABLE";
canStart = false;
available = true;
instance_create(x,y,BallBossPlateau);
if UberCont.canSave
{
	instance_create(x,y,SaveStation);
	instance_destroy();
	with BallBossPlateau
	{
		image_index = image_number-1;
	}
	exit;
}
event_user(0);

