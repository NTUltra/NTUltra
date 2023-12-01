if instance_exists(Player) && !instance_exists(RageIndicator){
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,clamp(Player.rage*0.004,0,1));//150%
}

