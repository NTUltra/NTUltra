/// @description Outline
if place_meeting(x,y + 8,Wall)
{
	if sprite_index == spr_hurt
		draw_sprite_ext(sprBanditSquareHurtOutline,-1,x,y,1,right,image_angle,c_white,1)
	else if sprite_index == spr_walk
		draw_sprite_ext(sprBanditSquareWalkOutline,-1,x,y,1,right,image_angle,c_white,1)
	else
		draw_sprite_ext(sprBanditSquareIdleOutline,-1,x,y,right,1,image_angle,c_white,1)
}
