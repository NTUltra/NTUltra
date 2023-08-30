/// @description Dual wielding melee
var xx = x;
var yy = y + 6;
if alarm[6] < 1
{
	draw_sprite_ext(wepspr,0,
	xx,
	yy-4,
	1,
	-wepflip,gunangle+wepangle2,c_white,1);
	/*if gunangle <= 180
	{
		draw_sprite_ext(sprGoldShotgun,0,xx+lengthdir_x(-wkick,gunangle),yy+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
	}*/
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
	///if gunangle > 180
	//{
		draw_sprite_ext(wepspr,0,xx,yy,1,wepflip,gunangle+wepangle1,c_white,1)
	//}
}
else
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}