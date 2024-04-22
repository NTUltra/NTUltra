/// @description Eye
draw_self();
if sprite_index == spr_idle
{
	var len = 0;
	var dir = 270;
	if instance_exists(Player)
	{
		len = clamp(point_distance(x,y,Player.x,Player.y) * 0.25,0,4);
		dir = point_direction(x,y,Player.x,Player.y);
	}
	draw_sprite_ext(sprVoidSeerEye,0,x + lengthdir_x(len,dir),y + lengthdir_y(len,dir),1,1,dir,c_white,1);
}