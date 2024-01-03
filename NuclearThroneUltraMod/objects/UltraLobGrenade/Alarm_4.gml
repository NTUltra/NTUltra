/// @description Drop another wee nade







// Inherit the parent event
event_inherited();
alarm[5] -= 1;
if !bounce
{
	with instance_create(x,y,DropGrenade) {
		direction = other.direction + (random_range(-10,10)*other.accuracy);
		image_angle = direction;
		rotationSpeed = other.rotationSpeed * 1.5;
		speed = other.speed * 0.8;
	}	
}