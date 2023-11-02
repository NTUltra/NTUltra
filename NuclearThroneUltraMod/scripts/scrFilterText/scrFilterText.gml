///scrFilterText();
// /@description
///@param text, filter
function scrFilterText(txt, filter){
	var actualtxt = scrReplaceAllColourCodes(txt, filter);
	var returnTxtArr = string_split(actualtxt,filter,false);
	var returnTxt = "";
	var al = array_length(returnTxtArr);
	for (var i = 0; i < al; i++)
	{
		if i % 2 == 0
		{
			for (var j = 0; j < string_length(returnTxtArr[i]); j++)
			{
				if (string_char_at(returnTxtArr[i],j+1) == "#")
				{
					returnTxt += "#";
				}
				else
					returnTxt += " ";
			}
		}
		else
			returnTxt += returnTxtArr[i];
	}
	return string_hash_to_newline(returnTxt);
}