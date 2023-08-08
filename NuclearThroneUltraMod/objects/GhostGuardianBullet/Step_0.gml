/// @description Rotate
if instance_exists(owner)
{
	
	
	//Additive drag behind so eyes has some effect
	x += ((owner.x + lengthdir_x(distance,ownerAngle))-x)*0.7;
	y += ((owner.y + lengthdir_y(distance,ownerAngle))-y)*0.7;
	if UberCont.normalGameSpeed == 60
	{
		ownerAngle += (ownerAngleRotationSpeed * rotationDirection) * 0.5;
		image_angle += angleDir*0.5;
	}
	else
	{
		ownerAngle += (ownerAngleRotationSpeed * rotationDirection);
		image_angle += angleDir;
	}
}
else
{
instance_destroy();	
}