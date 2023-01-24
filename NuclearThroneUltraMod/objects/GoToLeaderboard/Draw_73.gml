draw_sprite(sprite_index,0,x,y)
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(x+8,y,"VIEW LEADERBOARD");
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	with UberCont
	{
		goToLeaderboard = true;
		runScore = [];
		runRace = [];
		if UberCont.opt_gamemode == 26
			leaderboardType = LEADERBOARD.SCORE;
		else if UberCont.opt_gamemode == 27
			leaderboardType = LEADERBOARD.RACE;
		else if UberCont.opt_gamemode == 37
			leaderboardType = LEADERBOARD.WEEKLY;
	}
	scrRestart();
}
