/// @description Logging
draw_set_halign(fa_left)
draw_set_valign(fa_top);
draw_text(x,y-16,day);
draw_text(x+64,y,leaderboardString);
var yy = y;
var i = 1;
repeat(string_count("\n",leaderboardString))
{
	draw_text(x,yy,string(i)+".");
	yy += string_height("W");
	i++;
}

