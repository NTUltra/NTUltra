///xxx();
// /@description
///@param
function scrDrawWeaponsFound(finalizedWeapons,m,xx,yy,surfX,surfY,surfH,weaponStep) {
	var hoverState = 0;
	var al = array_length(finalizedWeapons);
	var wy = yy;
	var hm = m*0.5;
	var mm = weaponStep - hm;
	var mx = mouse_x - camera_get_view_x(view_camera[0]) - surfX;
	var my = mouse_y - camera_get_view_y(view_camera[0]) - surfY;
	for(var i = 0; i < al; i++)
	{
		var col = c_dkgray;
		if finalizedWeapons[i].used
			col = c_lime;
		else if finalizedWeapons[i].found
			col = c_ltgray;
		if (wy < surfH && wy > 0
		&& mx < xx + mm && mx > xx - hm
		&& my < wy + hm && my > wy - hm)
		{
			col = c_white;
			hoverState = finalizedWeapons[i].index;
		}
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx-1,wy+1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx-1,wy,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx-1,wy-1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx,wy-1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx+1,wy-1,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx+1,wy,1,1,0,col,1);
		draw_sprite_ext(wep_sprt[finalizedWeapons[i].index],1,xx+1,wy+1,1,1,0,col,1);
		draw_sprite(wep_sprt[finalizedWeapons[i].index],0,xx,wy);
		if finalizedWeapons[i].isNew
			draw_sprite(sprNew,0,xx - 8,wy - 4);
		
		wy += m;
	}
	return hoverState;
}