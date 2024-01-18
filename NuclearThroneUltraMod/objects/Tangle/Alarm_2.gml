/// @description Check LOS
alarm[2] = 5;
if instance_exists(Player) && !collision_line(x,y,Player.x,Player.y,Wall,false,false) {
	sprite_index = sprTangleUpg;
} else
{
	sprite_index = sprTangle;
}