/// @description xxx
/*
if Player.back = -1 and !(Player.IsShielding){
	draw_sprite_ext(Player.wep_sprt[Player.wep],Player.triggerfinger,
	x+lengthdir_x(-Player.wkick,Player.aimDirection+(Player.wepangle*(1-Player.wkick/20))),
	y+Player.gunY+lengthdir_y(-Player.wkick,Player.aimDirection+(Player.wepangle*(1-Player.wkick/20))),
	1,
	Player.wepright,Player.aimDirection+(Player.wepangle*(1-Player.wkick/20)),c_white,1)
}
draw_self();*/
with Player {
	var r = right;
	var f = wepflip;
	var bf = bwepflip;
	image_yscale = other.image_yscale;
	right = other.image_xscale;
	wepflip *= abs(right);
	bwepflip *= abs(right);
	event_perform(ev_draw,0);
	image_yscale = 1;
	right = r;
	wepflip = f;
	bwepflip = bf;
}