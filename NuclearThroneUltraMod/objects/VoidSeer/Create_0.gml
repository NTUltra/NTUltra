/// @description Init
event_inherited();
image_speed = 0;
spr_intro = sprVoidSeerIntro;
spr_idle = sprVoidSeerIdle;
alarm[0] = 15;
depth = -1;
killerSequence = false;
if UberCont.ctot_void_entered == 0 {
	killerSequence = true;
	with VoidMaster
	{
		visible = false;
		alarm[0] = 0;
	}
	with VoidBench
	{
		visible = false;
		alarm[0] = 0;
	}
	with VoidFiend
	{
		visible = false;
		alarm[0] = 0;
	}
	with VoidExit
	{
		alarm[0] = 0;
	}
}
else
{
	UberCont.ctot_void_entered += 1;	
}