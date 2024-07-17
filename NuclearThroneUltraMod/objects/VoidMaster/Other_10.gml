/// @description Dialogue
if completedChallenge
{
	switch (dialogueStep)
	{
		case 1:
			with TextHandler {
				text = "HERE IS YOUR REWARD";
			}
			event_user(3);
			alarm[2] = 5;
		break;
		case 2:
			with TextHandler {
				text = "YOUR DEBUFF IS ALSO REMOVED";
			}
			alarm[2] = 5;
		break;
		case 3:
			completedChallenge = false;
			event_user(2);
			with TextHandler {
				text = "";
			}
		break;
	}
}
else if introSpiel
{
	switch (dialogueStep)
	{
		case 1:
			with TextHandler {
				text = "LET'S SEE HOW STRONG YOU REALLY ARE";
			}
			alarm[2] = 5;
		break;
		case 2:
			with TextHandler {
				text = "TRY OUT ONE OF MY CHALLENGES\nGIVE ME PORTAL ESSENCE TO START THEM";
			}
			event_user(2);
			alarm[2] = 5;
		break;
		case 3:
			introSpiel = false;
			with TextHandler {
				text = "";
			}
		break;
	}
}
else
{
	if keepTalking > 2
	{
		switch (dialogueStep)
		{
			case 1:
				with TextHandler {
					text = "VERY WELL...";
				}
				alarm[2] = 5;
			break;
			case 2:
				with TextHandler {
					text = "BUT BE WARNED,";
				}
				alarm[2] = 5;
			break;
			case 3:
				with TextHandler {
					text = "I WILL NOT HOLD BACK";
				}
				alarm[2] = 5;
			break;
			case 4:
				keepTalking = 0;
				with TextHandler {
					text = "";
				}
				alarm[2] = 5;
				event_user(4);
			break;
			default:
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
}