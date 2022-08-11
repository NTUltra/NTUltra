/// @description ScrollSkill
alarm[1] = 20;
if instance_exists(GenCont)
{
	exit;
}
	debug("scroll");
skillscroll += 1;
if skillscroll > skillscrollmax
{
	skillscroll = 0;
}
