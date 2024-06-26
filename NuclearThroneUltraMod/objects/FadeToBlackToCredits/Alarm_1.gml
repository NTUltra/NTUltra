/// @description Roll credits!
var et = endingType;
with UberCont
{
	with instance_create(x,y,Credits)
	{
		type = et;
		wepA = PlayerInEnding.awep
		wepB = PlayerInEnding.bwep
		wepC = PlayerInEnding.cwep
		sit = PlayerInEnding.spr_sit;
		persistent = true;
		if et == 1
			event_user(1);
	}
	if et == 0
		room_goto(romCredits);
}