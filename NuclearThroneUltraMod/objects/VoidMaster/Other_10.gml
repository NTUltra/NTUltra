/// @description Dialogue
if introSpiel
{
	switch (dialogueStep)
	{
		case 0:
			with TextHandler {
				text = "LET'S SEE HOW STRONG YOU REALLY ARE";
			}
			alarm[2] = 5;
		break;
		case 1:
			with TextHandler {
				text = "TRY OUT ONE OF MY CHALLENGES\nGIVE ME PORTAL ESSENCE TO START THEM";
			}
			event_user(2);
			alarm[2] = 5;
		break;
		case 2:
			introSpiel = false;
		with TextHandler {
				text = "";
			}
		break;
	}
}