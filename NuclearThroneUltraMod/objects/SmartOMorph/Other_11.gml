/// @description Set up curve point
var dis = point_distance(x,y,targetX,targetY);
offsetX = x + lengthdir_x(dis*0.5,direction) + lengthdir_x(dis * curveAmount,direction + curveDirection);
offsetY = y + lengthdir_y(dis*0.5,direction) + lengthdir_y(dis * curveAmount,direction + curveDirection);
homeDirection = point_direction(x,y,targetX,targetY);
scrSplashDamage(4, 32, false);
with instance_create(x,y,AnimDestroyBloom)
{
	image_speed = 0.5;
	if other.energyBrained
		sprite_index = sprSmartOMorphFireUpg;
	else
		sprite_index = sprSmartOMorphFire;
	speed = 1;
	direction = other.homeDirection;
	image_angle = direction;
}