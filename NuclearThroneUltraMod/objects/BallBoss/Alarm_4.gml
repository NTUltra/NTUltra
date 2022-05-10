/// @description Spin other way around
spinRate *= -1;
repeat(2+irandom(2))
with instance_create(x,y,Smoke)
{
	motion_add(other.image_angle,1+random(2));
}
