var xx = x;
var yy = y + 6;
if alarm[6] < 1
{
	draw_sprite_ext(sprGoldShotgun,0,
	xx+lengthdir_x(-bwkick + 1,gunangle),
	yy-4+lengthdir_y(-bwkick + 1,gunangle),1,
	-right,gunangle,c_white,1);
	/*if gunangle <= 180
	{
		draw_sprite_ext(sprGoldShotgun,0,xx+lengthdir_x(-wkick,gunangle),yy+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
	}*/
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
	///if gunangle > 180
	//{
		draw_sprite_ext(sprGoldShotgun,0,xx+lengthdir_x(-wkick + 1,gunangle),yy+lengthdir_y(-wkick + 1,gunangle),1,right,gunangle,c_white,1)
	//}
}
else
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}