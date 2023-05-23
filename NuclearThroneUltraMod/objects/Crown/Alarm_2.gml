/// @description Echo trail
alarm[2] = 5;
with instance_create(x,y,Echo) {
	sprite_index = other.sprite_index;
	image_index = other.image_index;
}