/// @description big shake big shift
if BackCont.shake > (4 * UberCont.opt_shake)
{
	with AcidDreamControl
	{
		event_user(0);	
	}
	alarm[3] = 30;
}
else
{
	alarm[3] = 1;	
}