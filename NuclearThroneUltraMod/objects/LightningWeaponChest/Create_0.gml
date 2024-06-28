event_inherited()
curse = 0
heavyHeart = false;
if instance_exists(Player) 
{
	if Player.skill_got[0]
		heavyHeart = true;
}
wep[0] = scrDecideLightningWep();
if heavyHeart
{
	do {
		wep[1] = scrDecideLightningWep();
	} until (wep[0] != wep[1]);
}