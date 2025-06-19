if active == 1
{
	draw_sprite_ext(spr_active,imageIndex,x,y,right,1,0,c_white,1);
}
else if active == 0
{
	draw_sprite_ext(spr_inactive,-1,x,y,right,1,0,c_white,1);
}
else
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
}
