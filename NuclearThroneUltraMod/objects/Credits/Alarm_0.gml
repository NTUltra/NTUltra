/// @description Itterate credit sequence and decide ending
text = credits[creditIndex][0];
dullText = scrReplaceAllColourCodes(text);
alarm[0] = credits[creditIndex][0];
creditIndex += 1;
if creditIndex > array_length(credits)
{
	event_user(0);
}