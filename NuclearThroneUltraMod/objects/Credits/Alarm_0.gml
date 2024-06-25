/// @description Itterate credit sequence and decide ending
alarm[2] = inputDelay;
text = credits[creditIndex][0];
dullText = scrReplaceAllColourCodes(text);
if creditIndex >= array_length(credits) - 1
{
	event_user(0);
}
else
{
	// alarm[0] = credits[creditIndex][1];
	creditIndex += 1;
}