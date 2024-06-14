if sprite_index == spr_disappear && image_index > fadeNumber
	exit;
with other
{
	instance_destroy(id)
	instance_create(x,y,FloorExplo)
}

