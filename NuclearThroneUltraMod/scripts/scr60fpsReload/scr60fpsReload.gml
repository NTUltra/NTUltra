///scr60fpsReload();
// /@description
///@param
function scr60fpsReload(){
	if UberCont.normalGameSpeed == 60
	{
		reload += max(0,(prev60reload - reload)*0.5);
		breload += max(0,(prev60breload - breload)*0.5);
		creload += max(0,(prev60creload - creload)*0.5);
		/*
		var crm = 0.5;
		var cr = (prev60reload - reload)*crm;
		if cr < 0
		{
			prev60reload += wep_load[wep];
			var cr = (prev60reload - reload)*crm;
		}
		if reload + cr > lowa
		{
			reload = reload+cr
		}
		else
		{
			reload = lowa;	
		}
		cr = (prev60breload - breload)*crm;
		if cr < 0
		{
			prev60breload += wep_load[bwep];
			var cr = (prev60breload - breload)*crm;
		}
		if breload + cr > lowb
		{
			breload = breload+cr
		}
		else
		{
			breload = lowb;	
		}
		cr = (prev60creload - creload)*crm;
		if cr < 0
		{
			prev60creload += wep_load[cwep];
			var cr = (prev60creload - creload)*crm;
		}
		if creload + cr > lowc
		{
			creload = creload+cr
		}
		else
		{
			creload = lowc;	
		}*/
	}
	prev60reload = reload;
	prev60breload = breload;
	prev60creload = creload;
}