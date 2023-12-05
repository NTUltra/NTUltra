if instance_exists(Player) && !instance_exists(RageIndicator){
	draw_sprite_ext(sprite_index,image_index,x,y,abs(Player.right),Player.image_yscale,image_angle,c_white,clamp(Player.rage*0.004,0,1));//150%
}

