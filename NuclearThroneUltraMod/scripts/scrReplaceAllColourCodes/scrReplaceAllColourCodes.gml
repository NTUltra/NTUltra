///scrReplaceAllColourCodes();
// /@description
///@param text, exceptionCode
function scrReplaceAllColourCodes(txt, exceptionCode = "") {
	var returnTxt = txt;
	if exceptionCode != "<r>"
		returnTxt = string_replace_all(returnTxt,"<r>","");
	if exceptionCode != "<g>"
		returnTxt = string_replace_all(returnTxt,"<g>","");
	if exceptionCode != "<y>"
		returnTxt = string_replace_all(returnTxt,"<y>","");
	if exceptionCode != "<gb>"
		returnTxt = string_replace_all(returnTxt,"<gb>","");
	if exceptionCode != "<aq>"
		returnTxt = string_replace_all(returnTxt,"<aq>","");
	if exceptionCode != "<w>"
		returnTxt = string_replace_all(returnTxt,"<w>","");
	if exceptionCode != "<gr>"
		returnTxt = string_replace_all(returnTxt,"<gr>","");
	if exceptionCode != "<p>"
		returnTxt = string_replace_all(returnTxt,"<p>","");
	if exceptionCode != "<pi>"
		returnTxt = string_replace_all(returnTxt,"<pi>","");
	if exceptionCode != "<b>"
		returnTxt = string_replace_all(returnTxt,"<b>","");
	if exceptionCode != "<v>"
		returnTxt = string_replace_all(returnTxt,"<v>","");
	return returnTxt;
}