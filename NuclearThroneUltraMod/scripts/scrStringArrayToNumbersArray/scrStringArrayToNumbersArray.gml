///scrStringArrayToNumbersArray();
// /@description converts a string formatted in array [ x, y, z ] to an array
///@param inputString
function scrStringArrayToNumbersArray(inputString){
	var formattedString = string_replace_all(inputString," ","");
	formattedString = string_replace_all(formattedString,"[","");
	formattedString = string_replace_all(formattedString,"]","");
	var stringArray = string_split(formattedString,",",false);
	var al = array_length(stringArray);
	var resultArray = array_create(al,0);
	for (var i = 0; i < al; i ++)
	{
		resultArray[i] = real(stringArray[i]);	
	}
	return resultArray;
}