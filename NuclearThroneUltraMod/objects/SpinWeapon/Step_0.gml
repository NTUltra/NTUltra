/// @description Rotate
var r = rotationSpeed;
r += (alarm[0] * sign(r));
if UberCont.normalGameSpeed == 60
	rotation += r * 0.5;
else
	rotation += r;
with Player
{
	if wep != other.wep
	{
		with other
		{
			instance_destroy();	
		}
	}
}