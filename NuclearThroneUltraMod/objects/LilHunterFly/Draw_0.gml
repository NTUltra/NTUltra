if gunangle <= 180
draw_sprite_ext(sprLilHunterGun,-1,x+lengthdir_x(-wkick,gunangle),y+z+lengthdir_y(-wkick,gunangle),1,image_xscale,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y+z,image_xscale,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(sprLilHunterGun,-1,x+lengthdir_x(-wkick,gunangle),y+z+lengthdir_y(-wkick,gunangle),1,image_xscale,gunangle,c_white,1)

if shadowdraw
draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ));

