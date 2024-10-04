///xxx();
// /@description
///@param
function scrDrawWeaponsFound(finalizedWeapons,m,xx,yy){
	var al = array_length(finalizedWeapons);
	var wy = yy;
	for(var i = 0; i < al; i++)
	{
		var col = c_dkgray;
		if finalizedWeapons[i].used
			col = c_lime;
		else if finalizedWeapons[i].found
			col = c_silver;
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx-1,wy+1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx-1,wy,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx-1,wy-1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx,wy-1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx+1,wy-1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx+1,wy,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx+1,wy+1,1,1,0,col,1);
		draw_set_colour(c_white);
		draw_sprite(wep_sprt[finalizedWeapons[i].index],0,xx,wy);
		if finalizedWeapons[i].isNew
			draw_sprite(sprNew,0,xx - 8,wy - 4);
		wy += m;
	}
}