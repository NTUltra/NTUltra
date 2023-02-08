/// @description ScrollSkill
alarm[1] = 20;
if instance_exists(GenCont)
{
	exit;
}
skillscroll += 1;
if skillscroll > skillscrollmax
{
	skillscroll = 0;
}
