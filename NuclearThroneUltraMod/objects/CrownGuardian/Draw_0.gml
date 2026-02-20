draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if speed > 2 && walk > 0
{
	draw_sprite_ext(sprAngelActive,1,x,y - 12,1,1,0,c_white,clamp(speed * 0.25,0.25,0.75));
}