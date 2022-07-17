if UberCont.mouse__x < x
right = -1
else if UberCont.mouse__x > x
right = 1

if instance_exists(owner)
{
	x = owner.x;
	y = owner.y;
}
else
	instance_destroy();