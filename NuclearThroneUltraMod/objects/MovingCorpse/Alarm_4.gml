/// @description Time to simplify
alarm[4] = 5;
if speed < 1 && alarm[0] < 1 && image_index == image_number-1
{
	instance_destroy(id,false);
	scrAddToCorpseCollector(sprite_index,image_index,x,y,image_xscale,mySize);
	/*
	with instance_create_depth(x,y,depth,Corpse)
	{
		mySize = other.mySize;
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		image_speed = 0;
	}*/
}