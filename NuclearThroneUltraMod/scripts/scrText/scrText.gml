///scrText();
// /@description Returns translation in string format
///@param translationKey
function scrText(translationColumn, translationKey){
	var text = "N/A";
	with Translations
	{
		if (translationKeys[? translationKey] != undefined)
		{
			text = translations[# 1 + translationColumn, translationKeys[? translationKey]];
		} else {
			text = translationKey;	
		}
	}
	return text;
}