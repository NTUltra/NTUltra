/// @description ScrollSkill
alarm[1] = 20;
skillscroll += 1;
if skillscroll > skillscrollmax
{
	skillscroll = 0;
}
if instance_exists(Vlambeer)
	alarm[1] = 0;