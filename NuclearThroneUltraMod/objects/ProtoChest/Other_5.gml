if sprite_index = sprProtoChestOpen
UberCont.protowep = 56
//else if UberCont.opt_gamemode!=1//Don't save proto wep when you're playing one weapon only GAMEMODE
if issecond
{
	UberCont.protowep2 = wep
	UberCont.protowepmod12 = wepmod1
	UberCont.protowepmod22 = wepmod2
	UberCont.protowepmod32 = wepmod3
	UberCont.protowepmod42 = wepmod4
}
else
{
	UberCont.protowep = wep
	UberCont.protowepmod1 = wepmod1
	UberCont.protowepmod2 = wepmod2
	UberCont.protowepmod3 = wepmod3
	UberCont.protowepmod4 = wepmod4	
}
