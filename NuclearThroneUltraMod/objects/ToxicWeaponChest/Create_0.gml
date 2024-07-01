
event_inherited()
wep[0] = scrDecideToxicWep();
if heavyHeart
{
	do {
		wep[1] = scrDecideToxicWep();
	} until (wep[0] != wep[1]);
}