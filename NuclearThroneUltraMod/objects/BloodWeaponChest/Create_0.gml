
event_inherited()
wep[0] = scrDecideBloodWep();
if heavyHeart
{
	do {
		wep[1] = scrDecideBloodWep();
	} until (wep[0] != wep[1]);
}