/*
if UberCont.mouse__x > x and UberCont.mouse__x < x+24 and UberCont.mouse__y > y and UberCont.mouse__y < y+24 and selected = 0
 && (instance_exists(OptionSelect) && OptionSelect.selected == 0)
 && (instance_exists(StatsSelect) && StatsSelect.selected == 0) 
 && (instance_exists(OptionSelect2) && OptionSelect2.selected == 0)
 && (instance_exists(CreditsSelect) && CreditsSelect.selected == 0)
{
	snd_play_2d(sndClick);
selected = 1
}
else
alarm[0] = 2;
*/