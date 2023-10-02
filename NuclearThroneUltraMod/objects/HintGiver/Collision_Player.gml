/// @description Give me a hint
if active && sprite_index == spr_idle && KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	if (hasCurse && alarm[3] > 0)
	{
		snd_play(sndUncurse);
		Player.curse = 0;
		Player.bcurse = 0;
		Player.ccurse = 0;
		Player.isPermanent = true;
		hasASecret = false;
		event_perform(ev_alarm,3);
	}
	else if (hasASecret && alarm[3] > 0)
	{
		snd_play(sndCursedChest);
		Player.curse = 1;
		hasASecret = false;
		event_perform(ev_alarm,3);
	}
	else if alarm[3] < 1
	{
		snd_play(sndCursedReminder,0,0,true,1,false,false,1);
		alarm[3] = 90;
	}
}