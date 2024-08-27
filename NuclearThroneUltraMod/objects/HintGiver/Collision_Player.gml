/// @description Give me a hint
with Player
	isOnInteractable = true;
if active && sprite_index == spr_idle && KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	if (hasCurse && alarm[3] > 0)
	{
		snd_play(sndUncurse);
		Player.curse = 0;
		Player.bcurse = 0;
		Player.ccurse = 0;
		if scrIsCrown(14) {
			snd_play(sndHealthPickup);
			scrHeal(1,true);	
		}
		Player.isPermanent = true;
		Player.visitedPortals = 0;
		hasASecret = false;
		scrUnlockGameMode(46,"FOR COMPLETING THE QUEST#FROM A CURSED FIEND");
		event_perform(ev_alarm,3);
	}
	else if (hasASecret && alarm[3] > 0)
	{
		snd_play(sndCursedChest);
		Player.bcurse = 1;
		Player.curse = 1;
		Player.ccurse = 1;
		hasASecret = false;
		with CrownVaultExit
			canUncurse = false;
		with CrownPickup
			canUncurse = false;
		event_perform(ev_alarm,3);
	}
	else if alarm[3] < 1
	{
		snd_play(sndCursedReminder,0,0,true,1,false,false,1);
		alarm[3] = 90;
	}
}