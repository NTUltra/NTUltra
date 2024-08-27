///scrText();
// /@description Returns translation in string format
///@param translationKey
function scrText(theRace, theLoop = -1, theIndex = -1){
	var text = "";
	with Translations
	{
		if theLoop == -1 && theRace < array_length(loreDump)
		{
			theLoop = irandom(array_length(loreDump[theRace]) -1);
		}
		if theIndex == -1 && theRace < array_length(loreDump) && theLoop < array_length(loreDump[theRace]) && theLoop >= 0
		{
			theIndex = irandom(array_length(loreDump[theRace][theLoop]) -1);
		}
		if (theRace < array_length(loreDump) && theLoop < array_length(loreDump[theRace]) && theIndex < array_length(loreDump[theRace][theLoop])
		&& theRace >= 0 && theLoop >= 0 && theIndex >= 0)
		{
			text = loreDump[theRace][theLoop][theIndex];
		}
	}
	return string_upper(text);
}