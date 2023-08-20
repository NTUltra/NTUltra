///scrGetSeedOfDay();
// /@description
///@param
function scrGetSeedOfDay(day){
	var byteSeed = 0;
	var byteSize = string_byte_length(day);
	for (var i = 0; i < byteSize; i++) {
		byteSeed = (byteSeed + string_byte_at(day, i)) << 1;
	}
	return byteSeed;
}