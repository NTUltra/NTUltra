/// @description Immune

with Player {
	if other.sprite_index != other.spr_disappear
	{
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
	}
	else
	{
		motion_add(other.direction,3);	
	}
	//if (other.sprite_index != other.spr_disappear || image_index < image_number - 2)
	//{
	meleeimmunity = max(meleeimmunity,3);
	alarm[3] = max(alarm[3],3);
	//}
}
