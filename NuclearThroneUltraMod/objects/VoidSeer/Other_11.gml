/// @description Start a conversation
var t = "";
if UberCont.char_void_entered[race] == 1
{
	t = scrText(race - 1, 0);
}
else if specialConditionMet > -1
{
	//HERE SPECIAL LORE!
	t = scrText(race, 4, specialConditionMet);
}
else if loops < 2
{
	t = scrText(race - 1, loops + 1);
}
else
{
	t = scrText(race - 1, 3);
}
textQueue = string_split(t,"*");
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