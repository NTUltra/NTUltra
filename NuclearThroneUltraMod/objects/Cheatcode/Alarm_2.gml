/// @description EXPORTING TEXTURE
/*
var scl = 2;
var spr = wep_sprt[mi]
	if surface_exists(surf)
	{
		surface_resize(surf,
		sprite_get_width(spr)*scl,
		sprite_get_height(spr)*scl)
	}
	else
	{
		surf = surface_create(
		sprite_get_width(spr)*scl,
		sprite_get_height(spr)*scl);
	}
	surface_set_target(surf);
	draw_set_alpha(0);
	draw_clear(c_white);
	draw_set_alpha(1);
	draw_sprite_ext(spr, 0,
	sprite_get_xoffset(spr)*scl,
	sprite_get_yoffset(spr)*scl,
	scl,scl,0,c_white,1);
	surface_reset_target();
	surface_save(surf,string(mi)+wep_name[mi]+".png");
if mi < maxwep
	alarm[2] = 1;
mi ++;
//*/