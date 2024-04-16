///drawMenuBSkin();
// /@description
///@param
function drawMenuBSkin(skin,race,theColour){
	var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-48
	var yy = __view_get( e__VW.YView, 0 )+68
	if (skin == 1)
	{
		var spr = asset_get_index("sprMutant" + string(race)+"BIdle");
	}
	else if (skin == 2)
	{
		var spr = asset_get_index("sprMutant" + string(race)+"CIdle");
	}
	else if (skin == 3)
	{
		var spr = scrLeaderboardRace(race,0,true,0);
	}
	else if (skin == 4)
	{
		var spr = scrLeaderboardRace(race,1,true,0);	
	}
	else if (skin == 5)
	{
		var spr = scrLeaderboardRace(race,2,true,0);
	}
	else if (skin == 6)
	{
		var spr = scrLeaderboardRace(race,6,true,0);
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
	if race == 24 && instance_exists(ElementorHead)
	{
		if skin == 2
			draw_sprite_ext(sprMutant24CIdleHead,imageIndex,xx,yy,1,1,0,ElementorHead.col,1);
		else if skin == 1
			draw_sprite_ext(sprMutant24BIdleHead,imageIndex,xx,yy,1,1,0,ElementorHead.col,1);
		else
			draw_sprite_ext(sprMutant24IdleHead,imageIndex,xx,yy,1,1,0,ElementorHead.col,1);
	}
}