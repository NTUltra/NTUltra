function scrInit() {
	//The next variables are not saved
	everything=0;
	unlocked=0;
	opt_gamemode = [0];
	opt_gm1wep=1;
	opt_discs=6;
	opt_discdamage=2;
	justUnlocked = [];
	//INIT DATA
	opt_pickup = 69;
	opt_regal = 70;
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
	
	
	//To those who missed it
	if scrCheckOneGold()//do all characters have at least one golden weapon
	{
		scrUnlockCSkin(6,"FOR UNLOCKING ONE GOLDEN WEAPON#ON ALL CHARACTERS",0);
	}
}
