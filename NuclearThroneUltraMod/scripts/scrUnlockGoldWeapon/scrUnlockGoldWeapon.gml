function scrUnlockGoldWeapon(target) {
	/*save golden weapon*/
	if isValidGamemodeToUnlock(){//Don't save starting wep when you're playing one weapon only
		with UberCont
		{
		    if scrCheckGold(Player.wep_name[target])
		    {
			    if scrCheckAllGold()//does a char have all gold weps
				{
					scrUnlockBSkin(6,"FOR UNLOCKING ALL GOLDEN WEAPONS#ON ONE CHARACTER",0);
				}
    
				var goldIndex = scrCheckStartingWepUnlocked(target,other.race)
			    if target != 298 && target != 349 && goldIndex > -1//No golden frog pistol and no golden oops gun
			    {
					snd_play(sndGoldUnlock,0,true);
					//Unlock the gun!
					start_wep_have[goldIndex,other.race]=1;
					with instance_create(x,y,UnlockPopup)
						mytext=Player.wep_name[target]+ "#UNLOCKED FOR#"+string_replace(string_replace(string(Player.race_name[Player.race]),"[",""),"]","");
					scrSave();

			    }
				
				if scrCheckOneGold()//do all characters have at least one golden weapon
				{
					scrUnlockCSkin(6,"FOR UNLOCKING ONE GOLDEN WEAPON#ON ALL CHARACTERS",0);
				}
		    }
		}
	}
}
