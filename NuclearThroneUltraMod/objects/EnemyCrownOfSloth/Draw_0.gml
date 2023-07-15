/// @description LOS

if instance_exists(Player) && !collision_line(x,y,Player.x,Player.y,Wall,false,false)
{
	draw_line_colour(x,y,Player.x,Player.y,c_red,c_red);
}
draw_self();