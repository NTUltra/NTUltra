/// @description Draw gun
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
draw_sprite_ext(wep_sprt[wep],Player.triggerfinger,x+lengthdir_x(-Player.wkick,theAim+(wepangle*(1-wkick/20))),y+lengthdir_y(-wkick,theAim+(wepangle*(1-wkick/20))),image_yscale,wepright,theAim+(wepangle*(1-wkick/20)),c_white,1)