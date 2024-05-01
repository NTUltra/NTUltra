///scrText();
// /@description Returns translation in string format
///@param translationKey
function scrText(translationColumn, translationKey){
	var text = "N/A";
	debug(translationColumn);
	debug(translationKey);
	with Translations
	{
		if (translationKeys[? translationKey] != undefined)
		{
			text = translations[# 1 + translationColumn, translationKeys[? translationKey]];
		} else {
			text = translationKey;	
		}
	}
	debug(text);
	return string_upper(text);
}