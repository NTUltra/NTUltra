///scrIsLatestVersion();
// /@description
///@param
function scrIsLatestVersion(lV, strict = false){
	return (lV == UberCont.updateVersion && !strict) || lV == UberCont.updateVersion + UberCont.subUpdateVersion
}