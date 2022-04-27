draw_set_blend_mode(bm_add)
draw_sprite_ext(sprLaser,-1,x,y,1000,1,270,c_purple,1)
if ammo < 10 and place_meeting(UberCont.mouse__x,UberCont.mouse__y,Floor)
draw_sprite_ext(sprLaser,-1,UberCont.mouse__x,UberCont.mouse__y,1000,1,270,c_purple,1)
draw_self();
draw_set_blend_mode(bm_normal)

