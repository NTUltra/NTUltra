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
				text = "TRY OUT ONE OF MY CHALLENGES#GIVE ME PORTAL ESSENCE TO START THEM";
			}
			alarm[2] = 5;
		break;
	}
}