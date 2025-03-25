/// @description Starting a conversation
var raceName = Player.race_name[Player.race];
if introSpiel
{
	with TextHandler
	{
		text = "HERE RESTS A MUTANT"
	}
	alarm[2] = 5;
}
else
{
	with TextHandler
	{
		text = "";
	}
	alarm[2] = 5;
	event_user(2);
}