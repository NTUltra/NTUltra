/// @description LOS

if instance_exists(Player) && !collision_line(x,y,Player.x,Player.y,Wall,false,false)
{
	var col = make_colour_rgb(136,36,174);
	draw_line_colour(x,y,Player.x,Player.y,col,col);
}
event_inherited();