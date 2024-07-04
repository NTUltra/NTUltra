/// @description Itterate credit sequence and decide ending
alarm[2] = inputDelay;
text = tutorial[tutorialIndex][0];
dullText = string_hash_to_newline(scrReplaceAllColourCodes(text));
if tutorialIndex >= array_length(tutorial) - 1
{
	debug("END TUTORIAL");
	alarm[4] = 5;
}
else
{
	alarm[0] = tutorial[tutorialIndex][1];
	tutorialIndex += 1;
}