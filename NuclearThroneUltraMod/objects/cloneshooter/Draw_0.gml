/// @description Draw gun
if hitscanMode
{
	if instance_exists(Player)
	{
		var dir = point_direction(Player.x,Player.y,x,y);
		var len = 8;
		var px = Player.x - lengthdir_x(len,dir);
		var py = Player.y - lengthdir_y(len,dir);
		len = 18;
		var tx = x + lengthdir_x(len,dir);
		var ty = y + lengthdir_y(len,dir);
		var o = 2;
		if alarm[0] > 0
			o = lerp(4,2,clamp(3/alarm[0],0,1));
		var xo = lengthdir_x(o,dir+90);
		var yo = lengthdir_y(o,dir+90);
		draw_triangle_colour(px + xo,py + yo,px - xo, py - yo,tx,ty,c_black,c_black,c_black,false);
		o -= 1;
		xo = lengthdir_x(o,dir+90);
		yo = lengthdir_y(o,dir+90);
		draw_triangle_colour(px + xo,py + yo,px - xo, py - yo,tx,ty,c_white,c_white,c_white,false);
	}
}
else
{
	if UberCont.mouse__x < x
		right = -1
	else if UberCont.mouse__x > x
		right = 1

	if wkick > 0
		wkick -= 1
	if wkick < 0
		wkick += 1

	if wep_type[wep] = 0
	wepright = wepflip
	else
	wepright = right
	if instance_exists(Player)
		draw_sprite_ext(wep_sprt[wep],Player.triggerfinger,x+lengthdir_x(-Player.wkick,theAim+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,theAim+(wepangle*(1-wkick/20))),image_yscale,wepright,theAim+(wepangle*(1-wkick/20)),c_white,1)
}