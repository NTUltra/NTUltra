/// @description Draw on top of elementor's head
with myElementor
{
	var spr = sprite_index;
	switch(sprite_index)
	{
		case sprElementorMenu:
			spr = sprElementorMenuHead;
		break;
		case sprElementorMenuSelect:
			spr = sprElementorMenuSelectHead;
		break;
		case sprElementorMenuSelected:
			spr = sprElementorMenuSelectedHead;
		break;
		case sprElementorMenuDeselect:
			spr = sprElementorMenuDeselectHead;
		break;
	}
	draw_sprite_ext(spr,image_index,x,y,image_xscale,image_yscale,image_angle,other.col,1);
}
