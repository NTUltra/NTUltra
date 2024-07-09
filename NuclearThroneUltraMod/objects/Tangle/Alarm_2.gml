/// @description Check LOS
alarm[2] = 5;
if instance_exists(Player) && !collision_line(x,y,Player.x,Player.y,Wall,false,false) {
{
	if sprite_index == sprTangleVine
		sprite_index = sprTangleVineUpg;
	else
		sprite_index = sprTangleUpg;
}
} else
{
	if sprite_index == sprTangleVineUpg || sprite_index == sprTangleVine
		sprite_index = sprTangleVine;
	else
		sprite_index = sprTangle;
}