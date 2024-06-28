/// @description Ammotype chesting
ammoGet = 0;
curse = 0
heavyHeart = false;
var repeats = 2;
if instance_exists(Player) 
{
	if Player.skill_got[23]//Open mind
		repeats += 1;
	if Player.skill_got[0]
		heavyHeart = true;
}
if heavyHeart
	repeats += 1;
var j = 0;
var wantWep = [];
repeat(repeats)
{
	var tries = 1000;
	var newWep = 0;
	do {
		tries -= 1;
		newWep = scrDecideWep(0,20,0,0,true);
	} until (tries < 0 || !array_contains(wantWep, newWep));
	if newWep != 0
	{
		wantWep[j] = newWep;
		j += 1;
	}
}
wep = wantWep;