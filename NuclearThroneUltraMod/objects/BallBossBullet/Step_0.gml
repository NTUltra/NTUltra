/// @description Rotate
if instance_exists(owner)
{
image_angle = ownerAngle;
//Additive drag behind so eyes has some effect
x += ((owner.x + lengthdir_x(distance,ownerAngle))-x)*0.7;
y += ((owner.y + lengthdir_y(distance,ownerAngle))-y)*0.7;
ownerAngle += (ownerAngleRotationSpeed * rotationDirection);
distance = lerp(startDistance,targetDistance,min(1,time));
if alarm[0] < 1
	time += 0.01;
}
else
{
instance_destroy();	
}