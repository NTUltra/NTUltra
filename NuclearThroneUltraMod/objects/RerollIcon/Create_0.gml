scrSkills()
depth = -102;
p = 0
isRefund = false;
doesntTakeSkillPoint = false;
skillIndex = 0;
totalSkills = 1;
showDetail = UberCont.opt_show_mutation_details;
hover = false;
selected = false;
time = 0;
alarm[3] = 60;
alarm[4] = 2;
showNew = false;
if !UberCont.gamemode_have[28] && isValidGamemodeToUnlock()
{
	var dir = 1
    var deaths = 0
    repeat(UberCont.racemax)
	{
		deaths += UberCont.ctot_dead[dir]
		dir += 1;
	}
	showNew = deaths > 10;
}
showTimer = 10;