/// @description Dialogue
if hasTied > 0
{
	if hasTied == 1
	{
		hasTied += 1;
		with TextHandler
		{
			text = "I GUESS WE TIED";
		}
	}
	else if hasTied == 2
	{
		hasTied += 1;
		with TextHandler
		{
			text = "THAT'S MORE THAN I'VE EXPECTED OF YOU";
		}
	}
	else if hasTied == 3
	{
		hasTied += 1;
		with TextHandler
		{
			text = "YOU CAN TRY THESE ADDITIONAL CHALLENGES";
		}
	}
	else
	{
		hasTied = 0;
		UberCont.voidExtremeChallenges = true;
		with TextHandler
		{
			text = "";
		}
		event_user(5);
	}
	alarm[2] = 5;
}
else if hasSucceeded > 0
{
	if hasSucceeded == 1
	{
		hasSucceeded += 1;
		with TextHandler
		{
			text = "YOU BEAT ME";
		}
	}
	else if hasSucceeded == 2
	{
		hasSucceeded += 1;
		with TextHandler
		{
			text = "YOU'VE EARNED MY RESPECT";
		}
	}
	else if hasSucceeded == 3
	{
		hasSucceeded += 1;
		with TextHandler
		{
			text = "YOU ARE WORTHY OF THESE ADDITIONAL CHALLENGES";
		}
	}
	else
	{
		hasSucceeded = 0;
		UberCont.voidExtremeChallenges = true;
		with TextHandler
		{
			text = "";
		}
		event_user(5);
	}
	alarm[2] = 5;
}
else if hasFailed > 0
{
	if hasFailed == 1
	{
		hasFailed += 1;
		with TextHandler
		{
			text = "BUT NOT GOOD ENOUGH.";
		}
	}
	else
	{
		hasFailed = 0;
		with TextHandler
		{
			text = "";
		}
	}
	alarm[2] = 5;
}
else
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