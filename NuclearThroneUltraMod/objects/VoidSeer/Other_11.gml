/// @description Start a conversation
var t = "";
if UberCont.char_void_entered[race] == 1
{
	t = scrText(race - 1, "strFirstVisit");
}
else if loops > 1
{
	var ranLine = irandom(3);
	t = scrText(race - 1, "strRandomLoop2-" + string(ranLine));
}
else if loops > 0
{
	var ranLine = irandom(3);
	t = scrText(race - 1, "strRandomLoop1-" + string(ranLine));
}
else
{
	var ranLine = irandom(3);
	t = scrText(race - 1, "strRandomLoop0-" + string(ranLine));
}
debug(t);
textQueue = string_split(t,"*");
debug(textQueue);
/*
var al = array_length(textQueue);
for (var i = 0; i < al; i ++)
{
	if string_letters(textQueue[i]) == ""
		textQueue[i] = 0;
	else
		textQueue[i] = string_letters(textQueue[i]);
}*/
textQueue[array_length(textQueue)] = "";
dialogueStep = 0;
with TextHandler
{
	text = other.textQueue[other.dialogueStep];
}
alarm[2] = 5;