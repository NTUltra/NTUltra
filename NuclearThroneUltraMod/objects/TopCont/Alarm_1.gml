/// @description ScrollSkill
alarm[1] = 20;
if instance_exists(GenCont)
{
	exit;
}
debug("SCROLL ", skillscroll);
debug("skillscrollmax ", skillscrollmax);

skillscroll += 1;
if skillscroll > skillscrollmax
{
	skillscroll = 0;
}
