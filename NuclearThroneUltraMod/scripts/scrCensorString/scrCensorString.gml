///scrCensorString();
// /@description
///@param
function scrCensorString(originalString){
	var al = string_length(originalString);
	originalString = string_replace_all(originalString,"\n","#");
	var newString = "";
	for (var i = 0; i < al; i ++)
	{
		var char = string_char_at(originalString,i)
		if char == "#"
			newString += "\n";
		else if i % 3 == 0
			newString += char;
		else if char == " "
			newString += " ";
		else
			newString += "?";
	}
	return newString;
}