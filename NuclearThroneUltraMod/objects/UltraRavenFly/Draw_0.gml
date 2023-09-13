if gunangle <= 180
	draw_sprite_ext(sprUltraRavenGun,-1,x+lengthdir_x(-wkick,gunangle),y+2+z+lengthdir_y(-wkick,gunangle),1,image_xscale,gunangle,c_white,1)

draw_sprite_ext(sprite_index,-1,x,y+z,image_xscale,1,0,c_white,1)

if gunangle > 180
	draw_sprite_ext(sprUltraRavenGun,-1,x+lengthdir_x(-wkick,gunangle),y+2+z+lengthdir_y(-wkick,gunangle),1,image_xscale,gunangle,c_white,1)