/// @description Dialogue
if introSpiel
{
	var raceName = Player.race_name[Player.race]
	switch (dialogueStep)
	{
		case 0:
			with TextHandler {
				text = "I SELL STUFF FOR PORTAL ESSENCE";
			}
			alarm[2] = 5;
		break;
		case 1:
			with TextHandler {
				text = "ALL SORTS OF STUFF";
			}
			alarm[2] = 5;
		break;
		case 2:
			with TextHandler {
				text = "MAYBE SOMETHING USEFUL FOR " + raceName + "?";
			}
			alarm[2] = 5;
		break;
		case 3:
			with TextHandler {
				text = "TAKE LOOK AND BUY!";
			}
			alarm[2] = 5;
		break;
		case 4:
			introSpiel = false;
			event_user(2);
		with TextHandler {
				text = "";
			}
		break;
	}
}
else
{
	with TextHandler {
		text = "";
	}
}