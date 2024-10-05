/// @description WepScroll +
/// @description gmScroll
wepScroll += 1;
var maxi = (20 * (UberCont.longestWeaponRow + 1)) - 86
if wepScroll >= maxi
{
	wepScroll = max(0,maxi);
	alarm[9] = 20;
}
else
	alarm[8] = 1;
