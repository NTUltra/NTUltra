draw_sprite(sprite_index,-1,x,y)
draw_set_color(c_gray)
draw_rectangle(x,y+1,x+UberCont.opt_musvol*100,y+6,0)

//slider
if alarm[0] < 1 && mouse_check_button(mb_left) and UberCont.mouse__x > x-2 and UberCont.mouse__x < x+100 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
UberCont.opt_musvol = round((UberCont.mouse__x-x)/5)*5/100

if UberCont.opt_musvol < 0
{
	UberCont.opt_musvol = 0;
}

with MusCont
{
	
//audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(max(0,UberCont.opt_musvol) )),0);

audio_sound_gain(amb,max(0,sqrt(max(0,UberCont.opt_ambvol) )),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
}

//button
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+103 and UberCont.mouse__x < x+113 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_musvol > 0
{
	if UberCont.opt_musvol < 0.06
		UberCont.opt_musvol -= 0.01
	else
		UberCont.opt_musvol -= 0.05
}

if UberCont.opt_musvol < 0
UberCont.opt_musvol = 0;

with MusCont
{
//audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(max(0,UberCont.opt_musvol) )),0);

audio_sound_gain(amb,max(0,sqrt(max(0,UberCont.opt_ambvol) )),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+113 and UberCont.mouse__x < x+123 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_musvol < 1
{
	if UberCont.opt_musvol < 0.05
		UberCont.opt_musvol += 0.01;
	else
		UberCont.opt_musvol += 0.05;
}

if UberCont.opt_musvol < 0
UberCont.opt_musvol = 0;

with MusCont
{
//audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(max(0,UberCont.opt_musvol) )),0);

audio_sound_gain(amb,max(0,sqrt(max(0,UberCont.opt_ambvol) )),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
}


UberCont.opt_sfxvol=max(0,UberCont.opt_sfxvol)

UberCont.opt_musvol=max(0,UberCont.opt_musvol)

UberCont.opt_ambvol=max(0,UberCont.opt_ambvol)


x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8)
y=round(__view_get( e__VW.YView, 0 )+32)

