/// @description Circle Indicator
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
}
var r = lerp(0,400,(alarm[0]+1)/maxDuration)
draw_circle_width_colour(x,y,r,3,c_orange);