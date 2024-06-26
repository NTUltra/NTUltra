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
		if type == 1
			event_user(1);
	}
	if et == 0
		room_goto(romCredits);
}
if et == 1
{
	instance_destroy();
	with Ally
	{
		instance_destroy(id,false);
	}
	with YungCuzDupe
	{
		instance_destroy(id,false);	
	}
	with projectile
	{
		instance_destroy(id,false);	
	}
}