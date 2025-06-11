///@description Draw
if alarm[3] > 0
{
	draw_sprite_ext(spr_leap_start,forceAnimation,x,y,right,1,0,c_white,1);
}
else if alarm[4] > 0
{
	shader_set(shdDrawAqua);
		draw_sprite_ext(spr_leap_end,forceAnimation,x+1,y+1,right,1,0,c_white,1);
		draw_sprite_ext(spr_leap_end,forceAnimation,x+1,y-1,right,1,0,c_white,1);
		draw_sprite_ext(spr_leap_end,forceAnimation,x-1,y-1,right,1,0,c_white,1);
		draw_sprite_ext(spr_leap_end,forceAnimation,x-1,y+1,right,1,0,c_white,1);
	shader_reset();
	draw_sprite_ext(spr_leap_end,forceAnimation,x,y,right,1,0,c_white,1);
}
else if alarm[2] > 0
{
	shader_set(shdDrawAqua);
		draw_sprite_ext(spr_leap,forceAnimation,x+1,y+1,right,1,0,c_white,1);
		draw_sprite_ext(spr_leap,forceAnimation,x+1,y-1,right,1,0,c_white,1);
		draw_sprite_ext(spr_leap,forceAnimation,x-1,y-1,right,1,0,c_white,1);
		draw_sprite_ext(spr_leap,forceAnimation,x-1,y+1,right,1,0,c_white,1);
	shader_reset();
	draw_sprite_ext(spr_leap,forceAnimation,x,y,right,1,0,c_white,1);
}
else
{
	if sprite_index == spr_idle
		draw_sprite_ext(spr_idle_use,-1,x,y,right,1,0,c_white,1);
	else
		draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1);
}