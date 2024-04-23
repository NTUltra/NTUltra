///scrTextExt();
	// /@description Returns translation in string format
	///@param race index
	///@param translationKey
	///@param notTranslate part in string with this parameter untranslated example: \n
function scrTextExt(translationColumn, translationKey, notTranslate){
	var text = "";
	with Translations
	{
		if (translationKeys[? translationKey] != undefined)
		{
			text = translations[# 1 + translationColumn, translationKeys[? translationKey]];
			text = string_replace_all(text,"{x}",notTranslate);
		} else {
			text = translationKey;	
		}
	}
	return text;
}