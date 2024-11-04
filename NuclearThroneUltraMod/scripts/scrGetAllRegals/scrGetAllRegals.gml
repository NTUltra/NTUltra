///scrGetAllRegals();
// /@description
///@param
function scrGetAllRegals(){
	with UberCont
	{
		var al = array_length(ctot_regal_taken);
		var totals = 0;
		for (var i = 0; i < al; i ++)
		{
			totals += ctot_regal_taken[i];
		}
		return totals;
	}
	return 0;
}