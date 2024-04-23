/// @description Start a conversation
var t = "";
if UberCont.char_void_entered[race] == 1 && false
{
	t = scrText(race - 1, "strFirstVisit");
	killerSequence = false;
	alarm[2] = 90;
}
else if loops > 1
{
	var ranLine = irandom(3);
	t = scrText(race - 1, "strRandomLoop2-" + ranLine);
}
else if loops > 0
{
	var ranLine = irandom(3);
	t = scrText(race - 1, "strRandomLoop1-" + ranLine);
}
else
{
	var ranLine = irandom(3);
	t = scrText(race - 1, "strRandomPreLoop" + ranLine);
}

textQueue = string_split(t,"*");
textQueueTime = [];
var al = array_length(textQueue);
for (var i = 0; i < al; i ++)
{
	textQueueTime[i] = real(string_digits(textQueue[i]));
	if string_letters(textQueue[i]) == ""
		textQueue[i] = 0;
	else
		textQueue[i] = string_letters(textQueue[i]);
}
textQueue[al-1] = "";
textQueueTime[al-1] = 0;
dialogueStep = 0;
with TextHandler
{
	text = scrText(other.race, other.textQueue[other.dialogueStep]);
}
alarm[2] = textQueueTime[0];