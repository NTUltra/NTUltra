/*if gunangle <= 180
draw_sprite_ext(wep_sprt[wep],-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,0,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(wep_sprt[wep],-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
*/

if wep_type[wep] = 0
wepright = wepflip
else
wepright = right

//draw_sprite_ext(sprite_index,0,x,y,right,1,0,c_white,1)
draw_sprite_ext(wep_sprt[wep],0,x+lengthdir_x(-wkick,point_direction(x,y,mx,my)+(wepangle*(1-wkick/20))),
y+lengthdir_y(-wkick,point_direction(x,y,mx,my)+(wepangle*(1-wkick/20))),
1,wepright,point_direction(x,y,mx,my)+(wepangle*(1-wkick/20)),c_white,1)