function scrDrawStats() {

	//DRAW STATS

	if widescreen > 0
	widescreen -= 8

	time = scrTime(UberCont.tot_time,true)
	dir = 1
	kills = 0
	deaths = 0
	loops = 0
	wallkill = 0;
	bkills = 0
	rkills = 0
	bdiff = 0
	rdiff = 0
	bloop = 0
	rloop = 0

	btime = 999999999
	rtime= 0

	repeat(UberCont.racemax)
	{
		kills += UberCont.ctot_kill[dir]
		deaths += UberCont.ctot_dead[dir]
		loops += UberCont.ctot_loop[dir]

		if UberCont.cbst_kill[dir] > bkills && dir != 0{
		bkills = UberCont.cbst_kill[dir]
		rkills = dir}

		if UberCont.cbst_diff[dir] > bdiff && dir != 0{
		bdiff = UberCont.cbst_diff[dir]
		rdiff = dir}

		if UberCont.cbst_loop[dir] > bloop && dir != 0{
		bloop = UberCont.cbst_loop[dir]
		rloop = dir}
	
		wallkill = UberCont.ctot_walls_destroyed;
		var wepmods = UberCont.weapons_modded;
		//if UberCont.cbst_time[UberCont.dir] = 999999999
		//besttimestring="NO TIME YET"
		//else
		//{
		
		if UberCont.cbst_time[dir] < btime && dir != 0 {
			btime = UberCont.cbst_time[dir];
			rtime = dir
		}

		//besttimestring = UberCont.cbst_time[UberCont.race]
		//}

		dir += 1
	}
	
	if btime == 999999999
		btime="NO TIME YET"
	else
		btime = scrTime(btime,false);
	race_name[0]="RANDOM"
	
	var skillstats  = "";
	var skillnames = "";
	var whiteEnter = "";
	var maxSkill = UberCont.maxskill + 1;
	var dir = 0;
	var totSkills = 0;
	repeat(maxSkill)
	{
		totSkills += UberCont.ctot_skill_taken[dir];
		if dir != 5
		{
			skillnames += UberCont.skill_name[dir]+"#";
			skillstats += string(UberCont.ctot_skill_taken[dir])+"#";
			whiteEnter+="#";
		}
		dir ++;
	}
	//And thronebutt
	skillnames += UberCont.skill_name[5]+"#";
	skillstats += string(UberCont.ctot_skill_taken[5])+"#";
	skillnames += UberCont.race_name[Menu.race] + " " + UberCont.skill_name[5] + "#";
	skillstats += string(UberCont.ctot_thronebutt_taken[Menu.race])+"#";
	whiteEnter+="##";
	//AND REGAL VISIONS
	var totalRegal = scrGetAllRegals();
	skillstats += string(totalRegal)+"#";
	totSkills += totalRegal;
	skillnames += UberCont.skill_name[dir] + "#";
	skillnames += UberCont.race_name[Menu.race] + " " + UberCont.skill_name[dir]+"#";
	skillstats += string(UberCont.ctot_regal_taken[Menu.race])+"#";
	whiteEnter+="##";
	if totSkills > 999
	{
		totSkills = string(totSkills);
		totSkills = string_copy(totSkills,0,3)+ "#" + string_copy(totSkills,4,string_length(totSkills));
	}
	else
	{
		totSkills = string(totSkills)+"#";	
	}
	var ultrastats  = "";
	var ultranames = "";
	var ultraWhiteEnter = "";
	var maxUltra = UberCont.maxultra;
	var totUltras = 0;
	var nowName = 5;
	var race = 1;
	for (dir = 1; dir <= maxUltra; nowName++) {
		if (nowName > 4)
		{
			ultranames += UberCont.race_name[race]+"#";
			ultraWhiteEnter += UberCont.race_name[race]+"#";
			ultrastats += "#";
			race++;
			nowName = 0;
		}
		else
		{
			ultrastats += string(UberCont.ctot_ultra_taken[dir])+"#";
			totUltras += UberCont.ctot_ultra_taken[dir];
			ultranames += UberCont.ultra_name[dir]+"#";
			ultraWhiteEnter+="#";
			if (dir == 84) //HORROR ULTRA E
			{
				ultrastats += string(UberCont.ctot_ultra_taken[0])+"#";
				totUltras += UberCont.ctot_ultra_taken[0];
				ultranames += UberCont.ultra_name[0]+"#";
				ultraWhiteEnter+="#";
			}
			dir ++;
		}
	}
	ultrastats += "###"
	ultraWhiteEnter += "##SECRET ULTRAS";
	ultranames += "###";
	var maxSecretUltra = UberCont.maxsecretultra
	for (i = 1; i < maxSecretUltra; i++) {
		if (i == 26)
		{
			ultrastats += string(UberCont.ctot_secret_ultra_taken[0])+"#";
			totUltras += UberCont.ctot_secret_ultra_taken[0];
			if UberCont.ctot_secret_ultra_taken[0] < 1
			{
				ultranames += scrCensorString(UberCont.secret_ultra_name[0]);
				ultranames += "#"
			}
			else
				ultranames += UberCont.secret_ultra_name[0]+"#";
		}
		ultrastats += string(UberCont.ctot_secret_ultra_taken[i])+"#";
		totUltras += UberCont.ctot_secret_ultra_taken[i];
		if UberCont.ctot_secret_ultra_taken[i] < 1
		{
			ultranames += scrCensorString(UberCont.secret_ultra_name[i]);
			ultranames += "#"
		}
		else
			ultranames += UberCont.secret_ultra_name[i]+"#";
		ultraWhiteEnter+="#";
	}
	if totUltras > 999
	{
		totUltras = string(totUltras);
		totUltras = string_copy(totUltras,0,3)+ "#" + string_copy(totUltras,4,string_length(totUltras));
	}
	else
	{
		totUltras = string(totUltras)+"#";	
	}
	var raceTime = UberCont.cbst_time[Menu.race];
	if raceTime == 999999999
		raceTime = "NO TIME YET"
	else
		raceTime = string(scrTime(raceTime,false));
	txt0 = "#STATISTICS"
	txt1 = "####TOTAL#TIME#KILLS#DEATHS#LOOPS#WALLS DESTROYED#WEAPON MODS APPLIED##BEST#TIME#KILLS#DIFFICULTY#LOOPS##"+string(race_name[Menu.race])+"#BEST KILLS#TOTAL KILLS#DEATHS#LOOPS#BEST TIME";
	var txt1b = "#"+skillnames+"#MUTATIONS TAKEN###" + ultranames+"#ULTRAS TAKEN";
	txt2 = "#####"+string(time)+"#"+string(kills)+"#"+string(deaths)+"#"+string(loops)+"#"+string(wallkill)+"#"+string(wepmods)+"###"+string(btime)+" "+string(race_name[rtime])+"#"+string(bkills)+" "+string(race_name[rkills])+"#"+string(bdiff)+
	" "+string(race_name[rdiff])+"#"+string(bloop)+" "+string(race_name[rloop])
	+"###"+string(UberCont.cbst_kill[Menu.race])+"#"+string(UberCont.ctot_kill[Menu.race])+"#"+string(UberCont.ctot_dead[Menu.race])+"#"+string(UberCont.ctot_loop[Menu.race])+"#"+raceTime
	var txt2b = "#"+skillstats+"#"+totSkills
	+"##"+ultrastats + "#"+ totUltras;
	stxt0 = "#STATISTICS"
	stxt1 = "####TOTAL########BEST######"+string(race_name[Menu.race])+ "######"
	var stxt1b = "MUTATIONS TAKEN##"
	+ whiteEnter
	+ "##ULTRA MUTATIONS#"
	+ ultraWhiteEnter;
	stxt2 = ""

	var takenCrowns = UberCont.ctot_crown_taken
	var stxt1c = "CROWNS TAKEN#"
	var txt1c = "#"
	var txt2c = "#"
	for (var i = 0; i < crownmax + secretcrownmax; i++) {
		var totCrown = 0;
		for (var j = 0; j < racemax; j++) {
			totCrown += takenCrowns[j,i];
		}
		stxt1b += "#";
		if i > crownmax && totCrown < 1
		{
			txt1c += scrCensorString(string_replace(string_replace(string_replace(crown_name[i],"[",""),"]",""),"CROWN OF ",""));
			txt1c += "#";
		}
		else
		{
			txt1c += string_replace(string_replace(string_replace(crown_name[i],"[",""),"]",""),"CROWN OF ","")+"#";
		}
		txt2c += string(totCrown) + "#";
	}
	
		#region olddaily
	/*
	var scoreDayList = UberCont.encrypted_data.dailies_score_day;
	var scoreScoreList = UberCont.encrypted_data.ctot_dailies_score_score;
	var al = array_length(scoreDayList);
	var stxt1c = "DAILY SCORE#"
	var txt1c = "#"
	var txt2c = "#"
	if (al < 1)
	{
		stxt1b += "#";
		txt1c += "NO SCORE#"
		txt2c += "YET#"
	}	
	for (var i = al - 1; i >= 0; i--) {
		stxt1b += "#";
		txt1c += string(scoreDayList[i])+"#";
		txt2c += string(scoreScoreList[i])+"#";
	}
	stxt1c += "##DAILY RACE#";
	txt1c += "##";
	txt2c += "##";
	var raceDayList = UberCont.encrypted_data.dailies_race_day;
	var raceTimeList = UberCont.encrypted_data.ctot_dailies_race_time;
	var al = array_length(raceDayList);
	if (al < 1)
	{
		stxt1b += "#";
		txt1c += "NO TIME"
		txt2c += "YET"
	}
	for (var i = al - 1; i >= 0; i--) {
		stxt1b += "#";
		txt1c += string(raceDayList[i])+"#";
		if raceTimeList[i] == -1
		{
			txt2c += "FAIL#"
		}
		else
		{
			var rt = scrTime(raceTimeList[i],false)
			txt2c += string(rt)+"#";
		}
	}
	*/
		#endregion

	var xOffsetL = -32//69
	var xOffset = 135;
	var yOffset = string_height(txt1)*25//190;//string_height(txt1);
	var bspc = 2;
	
	draw_set_valign(fa_top)
	draw_set_halign(fa_center)
	var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5;
	var yy = __view_get( e__VW.YView, 0 ) - StatsSelect.scrollY;
	draw_set_color(c_black)
	draw_text(xx,yy+1,string_hash_to_newline(string(txt0)))
	draw_text(xx+1,yy+1,string_hash_to_newline(string(txt0)))
	draw_text(xx+1,yy,string_hash_to_newline(string(txt0)))
	draw_set_color(c_gray)
	draw_text(xx,yy,string_hash_to_newline(string(txt0)))
	draw_set_color(c_white)
	draw_text(xx,yy,string_hash_to_newline(string(stxt0)))

	draw_set_halign(fa_right)
	draw_set_color(c_black)
	draw_text(xx-8,yy+1,string_hash_to_newline(string(txt1)))
	draw_text(xx-7,yy+1,string_hash_to_newline(string(txt1)))
	draw_text(xx-7,yy,string_hash_to_newline(string(txt1)))
	draw_text(xx+xOffset-bspc,yy+yOffset+1,string_hash_to_newline(string(txt1b)))
	draw_text(xx+xOffset-bspc-1,yy+yOffset+1,string_hash_to_newline(string(txt1b)))
	draw_text(xx+xOffset-bspc-1,yy+yOffset,string_hash_to_newline(string(txt1b)))
	draw_text(xx+xOffsetL-bspc,yy+yOffset+1,string_hash_to_newline(string(txt1c)))
	draw_text(xx+xOffsetL-bspc-1,yy+yOffset+1,string_hash_to_newline(string(txt1c)))
	draw_text(xx+xOffsetL-bspc-1,yy+yOffset,string_hash_to_newline(string(txt1c)))
	draw_set_color(c_gray)
	draw_text(xx-8,yy,string_hash_to_newline(string(txt1)))
	draw_text(xx+xOffset-bspc,yy+yOffset,string_hash_to_newline(string(txt1b)))
	draw_text(xx+xOffsetL-bspc,yy+yOffset,string_hash_to_newline(string(txt1c)))
	draw_set_color(c_white)
	draw_text(xx-8,yy,string_hash_to_newline(string(stxt1)))
	draw_text(xx+xOffset-bspc,yy+yOffset,string_hash_to_newline(string(stxt1b)))
	draw_text(xx+xOffsetL-bspc,yy+yOffset,string_hash_to_newline(string(stxt1c)))


	


	draw_set_halign(fa_left)

	draw_set_color(c_black)
	draw_text(xx+8,yy+1,string_hash_to_newline(string(txt2)))
	draw_text(xx+9,yy+1,string_hash_to_newline(string(txt2)))
	draw_text(xx+9,yy,string_hash_to_newline(string(txt2)))
	draw_text(xx+xOffset+bspc,yy+yOffset+1,string_hash_to_newline(string(txt2b)))
	draw_text(xx+xOffset+bspc+1,yy+yOffset+1,string_hash_to_newline(string(txt2b)))
	draw_text(xx+xOffset+bspc+1,yy+yOffset,string_hash_to_newline(string(txt2b)))
	draw_text(xx+xOffsetL+bspc,yy+yOffset+1,string_hash_to_newline(string(txt2c)))
	draw_text(xx+xOffsetL+bspc+1,yy+yOffset+1,string_hash_to_newline(string(txt2c)))
	draw_text(xx+xOffsetL+bspc+1,yy+yOffset,string_hash_to_newline(string(txt2c)))
	draw_set_color(c_gray)
	draw_text(xx+8,yy,string_hash_to_newline(string(txt2)))
	draw_text(xx+xOffset+bspc,yy+yOffset,string_hash_to_newline(string(txt2b)))
	draw_text(xx+xOffsetL+bspc,yy+yOffset,string_hash_to_newline(string(txt2c)))
	draw_set_color(c_white)
	draw_text(xx+8,yy,string_hash_to_newline(string(stxt2)))
	draw_text(xx+xOffset+bspc,yy+yOffset,string_hash_to_newline(string(txt2b)))
	draw_text(xx+xOffsetL+bspc,yy+yOffset,string_hash_to_newline(string(txt2c)))




}
