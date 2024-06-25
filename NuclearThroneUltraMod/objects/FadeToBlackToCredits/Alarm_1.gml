/// @description Roll credits!
with UberCont
{
	if other.endingType == 0
	{
		with instance_create(x,y,Credits)
		{
			type = 0;
			wepA = PlayerInEnding.awep
			wepB = PlayerInEnding.bwep
			wepC = PlayerInEnding.cwep
			sit = PlayerInEnding.spr_sit;
			persistent = true;
		}
	}
	room_goto(romCredits);
}