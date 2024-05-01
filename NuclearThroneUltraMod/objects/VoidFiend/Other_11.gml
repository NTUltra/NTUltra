/// @description Starting a conversation
var raceName = string_replace_all(string_replace_all(Player.race_name[Player.race],"[",""),"]","")
if introSpiel
{
	with TextHandler
	{
		text = "OH, FIRST TIME HERE " + raceName
	}
	alarm[2] = 5;
}
else
{
	with TextHandler
	{
		text = 
		choose (
		"YOU BUY SOMETHING " + raceName,
		"YOU BUY SOMETHING " + raceName,
		"YOU BUY SOMETHING " + raceName,
		"YOU BUY SOMETHING " + raceName,
		"YOU BUY SOMETHING " + raceName,
		raceName + " LOOK AT WHAT I SELL",
		"MY BROTHER LOVES CROWNS THATS WHY I CAN SELL SOME HERE",
		"YOUR HELP IS MUCH APPRECIATED!",
		"WATCH OUT FOR THE OTHERS THEY MAY NOT BE SO KIND",
		"TAKE A LOOK AND BUY!",
		"BUY BUY BUY!",
		"GIVE ME PORTAL ESSENCE!",
		"HAVE YOU SEEN MY BROTHER?",
		"MY BROTHER IS INTERESTED IN CURSES",
		"I FIND ROUTES FOR YOU TO TAKE",
		"I SELL GOLDEN WEAPONS FOR YOUR COLLECTION",
		"MY BROTHER IS SOMEWHERE IN YOUR WORLD",
		"MY BROTHER WILL TELL YOU ABOUT SECRET CROWNS#MAYBE EQUIP ONE AND TALK TO HIM AGAIN"
		);
	}
	alarm[2] = 5;
	event_user(2);
}