/// @description unlock player
with CameraLerp
{
	if id != other.id
	{
		active = true;
		exit;
	}
}
with Player
{
	lockout = false;	
}