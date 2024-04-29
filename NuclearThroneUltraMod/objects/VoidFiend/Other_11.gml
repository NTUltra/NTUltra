/// @description Starting a conversation
var raceName = Player.race_name[Player.race];
if introSpiel
{
	with TextHandler
	{
		text = "OH, FIRST TIME HERE " + string_replace_all(string_replace_all(raceName,"[",""),"]","");
		alarm[2] = 5;
	}
}
else
{
	with TextHandler
	{
		text = "YOU BUY SOMETHING " + string_replace_all(string_replace_all(raceName,"[",""),"]",""+"?");
		alarm[2] = 5;
	}	
}