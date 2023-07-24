///scrCensorString();
// /@description
///@param
function scrCensorString(originalString){
	var al = string_length(originalString);
	var newString = "";
	for (var i = 0; i < al; i ++)
	{
		var char = string_char_at(originalString,i)
		if i % 3 == 0
			newString += char;
		else if char == " "
			newString += " ";
		else
			newString += "?";
	}
	return newString;
}