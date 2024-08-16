/// @description chooseTimer
chooseTimer -= 1;
if chooseTimer > 0
{
	name = "RESET WEAPON BACK TO ORIGINAL?\n" + string(chooseTimer);
	alarm[0] = 30
}
else
{
	chooseTimer = 0;
	name = "REROLL WEAPON TO ANOTHER OF THE SAME TIER";
	cost = 1;
}