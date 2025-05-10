event_inherited()


if sprite_index != spr_fire
motion_add(direction,0.5)

if speed > maxSpeed
speed = maxSpeed

if alarm[2] > 8
{
with instance_create(x+random(96)-48,y+random(96)-48,LaserCharge)
{
	sprite_index = sprBubble;
	image_index = irandom(image_number-1);
	motion_add(point_direction(x,y,other.x,other.y),2+random(1))
	alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}

}

