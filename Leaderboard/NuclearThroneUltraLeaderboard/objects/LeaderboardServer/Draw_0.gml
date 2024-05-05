/// @description Logging
draw_set_halign(fa_left)
draw_set_valign(fa_top);
draw_text(x,y-16,day);
draw_text(x+256,y-16,"SEED:"+string(todaySeed)+" V:" + updateVersion);
draw_text(x+64,y,scoreLeaderboardString);
var yy = y;
var i = 1;
repeat(string_count("\n",scoreLeaderboardString))
{
	draw_text(x,yy,string(i)+".");
	yy += string_height("W");
	i++;
}
draw_set_valign(fa_bottom);
draw_text(x+64,y-32,raceLeaderboardString);
var yy = y-32;
var i = 1;
repeat(string_count("\n",raceLeaderboardString))
{
	draw_text(x,yy,string(i)+".");
	yy -= string_height("W");
	i++;
}
/*
var al = array_length(totalHitsCounter);
var tx = x - 64;
var ty = y;
draw_text(tx,ty,hitsCounter);
ty += 24;
for (var i = 0; i < al; i++) {
	draw_text(tx,ty,totalHitsCounter[i]);
	ty += 16;
}
*/