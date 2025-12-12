/// @description Dialogue
if introSpiel
{
	switch (dialogueStep)
	{
		case 0:
			with TextHandler {
				text = "IF YOU WANT TO FREE THIS MUTANT YOU MUST COLLECT 26 PORTAL ESSENCE";
			}
			alarm[2] = 5;
		break;
		case 1:
			with TextHandler {
				text = "UNFORTUNATELY WHEN YOU RETURN HERE THEY WILL BE GONE";
			}
			alarm[2] = 5;
		break;
		case 2:
			with TextHandler {
				text = "FIGURE OUT A WAY TO GET ENOUGH PORTAL ESSENCE BEFORE YOU LOOP";
			}
			alarm[2] = 5;
		break;
		case 3:
			hasShitToSay = false;
			introSpiel = false;
			with TextHandler {
				text = "";
			}
			alarm[2] = 5;
			event_user(2);
		break;
	}
}
else if closingWords
{
	switch (dialogueStep)
	{
		case 0:
			with TextHandler {
				text = "LOOKS LIKE YOU FREED ONE OF US";
			}
			alarm[2] = 5;
		break;
		case 1:
			with TextHandler {
				text = "THE OTHER VOID DWELLER WANT MORE PORTAL ESSENCE";
			}
			alarm[2] = 5;
		break;
		case 2:
			with TextHandler {
				text = "";
			}
			alarm[2] = 5;
		break;
	}
}
else
{
	with TextHandler {
		text = "";
	}
}