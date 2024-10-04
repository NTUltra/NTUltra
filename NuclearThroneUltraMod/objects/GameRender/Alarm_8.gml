/// @description WepScroll +
/// @description gmScroll
wepScroll += 2;
var maxi = (20 * (UberCont.longestWeaponRow + 1)) - 86
if wepScroll >= maxi
{
	wepScroll = maxi;
	alarm[9] = 15;
}
else
	alarm[8] = 1;
