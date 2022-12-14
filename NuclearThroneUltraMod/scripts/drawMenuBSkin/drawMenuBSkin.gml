///drawMenuBSkin();
// /@description
///@param
function drawMenuBSkin(skin,race,theColour){
	var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-60
	var yy = __view_get( e__VW.YView, 0 )+68
	if (skin == 1)
	{
		var spr = asset_get_index("sprMutant" + string(race)+"BIdle");
	}
	else if (skin == 2)
	{
		var spr = asset_get_index("sprMutant" + string(race)+"CIdle");
	}
	else
	{
		var spr = asset_get_index("sprMutant" + string(race)+"Idle");
	}
	shader_set(shdDrawWhite);
	draw_sprite_ext(spr,imageIndex,xx+1,yy+1,1,1,0,theColour,1);
	draw_sprite_ext(spr,imageIndex,xx+1,yy-1,1,1,0,theColour,1);
	draw_sprite_ext(spr,imageIndex,xx-1,yy-1,1,1,0,theColour,1);
	draw_sprite_ext(spr,imageIndex,xx-1,yy+1,1,1,0,theColour,1);
	shader_reset();
	draw_sprite_ext(spr,imageIndex,xx,yy,1,1,0,theColour,1);
}