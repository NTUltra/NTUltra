/// @description Bubbles

with instance_create(x,y,Dust)
{
	sprite_index = sprBubble;
	motion_add(random(360),random(2));
}
alarm[5] = 4;