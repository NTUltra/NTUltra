/// @description xxx
image_angle = direction


if speed < 6 and sprite_index != sprToxicSlugDisappear
{
	sprite_index = sprToxicSlugDisappear
	image_index = 0
	image_speed = 0.4
	repeat(2)
	instance_create(x,y,ToxicThrowerGas)
}