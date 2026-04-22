function scrInit() {
	//The next variables are not saved
	everything=0;
	unlocked=0;
	opt_default_gm = 9;
	opt_gamemode = [opt_default_gm];
	opt_gm1wep=1;
	opt_discs=6;
	opt_discdamage=2;
	justUnlocked = [];
	isLeaderboardGamemode = false;
	//INIT DATA
	any_wep_found = [];
	opt_pickup = 69;
	opt_regal = 70;
	any_wep_found = [];
	scrRaces();
	scrStartingWeapons();
	scrGameModes();
	scrCrowns();
	scrSkills();
	scrUltras();
	//Hey don't read this
	encrypted_data = {
		username: "",
		ctot_dailies_score_seed: [],
		daily_score_dates: [],
		ctot_dailies_score_score: [],
		dailies_score_day: [],
		ctot_dailies_race_seed: [],
		daily_race_dates: [],
		ctot_dailies_race_time: [],
		dailies_race_day: [],
		ctot_weeklies_score: ["", {}],
		secrets: [false,false,false,false,false,false,false,false,false,false],
	};
	scrLoadEncrypted();
	scrWeapons();
	
	scrLoad();
	scrLegacyWeaponStart();
	
	//Track weapons for thief unlock
	var n = string(scrCountWeaponsFound());
	race_lock[28] = "FIND "+ n +"/100 DIFFERENT WEAPONS"
	if n >= 100
	{
		scrUnlockCharacter(28,"FOR FINDING 100 UNIQUE WEAPONS");
	}
	
	//To those who missed it
	if scrCheckOneGold()//do all characters have at least one golden weapon
	{
		scrUnlockCSkin(6,"FOR UNLOCKING ONE GOLDEN WEAPON#ON ALL CHARACTERS",0);
	}
	if scrCheckAllGold()//does a char have all gold weps
	{
		scrUnlockBSkin(6,"FOR UNLOCKING ALL GOLDEN WEAPONS#ON ONE CHARACTER",0);
	}
}
