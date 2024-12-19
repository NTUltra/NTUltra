///scrLoadInRetailSave();
// /@description
///@param
function scrLoadInRetailSave(){
	ini_open("tempy.sav");
	ini_write_real("tempy","temp",0);
	ini_close();
	var filePath = filename_dir("tempy.sav");
	file_delete("tempy.sav");
	filePath = string_replace(filePath,"\NuclearThroneUltraMod","nuclearthrone\\nuclearthrone.sav");
	if file_exists(filePath)
	{
		ini_open(filePath);
		var file = file_text_open_read(filePath);
		var saveString = file_text_read_string(file);
		file_text_close(file);
		var retailData = json_parse(saveString);
		//cbgt
		race_cskin[1] = retailData.stats.charData_1.cbgt;
		race_bskin[2] = retailData.stats.charData_2.cbgt;
		race_have[3] = retailData.stats.charData_3.cgot;
		race_bskin[3] = retailData.stats.charData_3.cbgt;
		race_have[4] = retailData.stats.charData_4.cgot;
		race_bskin[4] = retailData.stats.charData_4.cbgt;
		race_have[5] = retailData.stats.charData_5.cgot;
		race_bskin[5] = retailData.stats.charData_5.cbgt;
		race_have[6] = retailData.stats.charData_6.cgot;
		race_bskin[6] = retailData.stats.charData_6.cbgt;
		race_have[7] = retailData.stats.charData_7.cgot;
		race_bskin[7] = retailData.stats.charData_7.cbgt;
		race_have[8] = retailData.stats.charData_8.cgot;
		race_bskin[8] = retailData.stats.charData_8.cbgt;
		race_have[9] = retailData.stats.charData_9.cgot;
		race_bskin[9] = retailData.stats.charData_9.cbgt;
		race_have[10] = retailData.stats.charData_10.cgot;
		race_bskin[10] = retailData.stats.charData_10.cbgt;
		race_have[21] = retailData.stats.charData_11.cgot;
		race_bskin[21] = retailData.stats.charData_11.cbgt;
		race_have[22] = retailData.stats.charData_12.cgot;
		race_bskin[22] = retailData.stats.charData_12.cbgt;
		ini_close();
		return true;
	}
	return false;
}