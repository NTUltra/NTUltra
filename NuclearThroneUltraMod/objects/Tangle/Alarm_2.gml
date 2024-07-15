/// @description Check LOS
alarm[2] = 5;
if instance_exists(Player) && !collision_line(x,y,Player.x,Player.y,Wall,false,false) {
{
	if spr_disappear == sprTangleVineDisappear
		sprite_index = sprTangleVineUpg;
	else
		sprite_index = sprTangleUpg;
}
} else
{
	if spr_disappear == sprTangleVineDisappear
		sprite_index = sprTangleVine;
	else
		sprite_index = sprTangle;
}