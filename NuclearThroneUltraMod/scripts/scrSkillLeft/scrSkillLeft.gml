function scrSkillLeft(sk5 = 0, sk4, sk3, sk2, sk1) {
	//Run in LevCont
	//Checks if there are still skills that you haven't taken.
	debug("check it");
	    //freespot = false
	    var dirskill=1
    
	    repeat(maxskill)
	    {
		    if Player.skill_got[dirskill]=0 && dirskill!=sk4&&dirskill!=sk3&&dirskill!=sk2&&dirskill!=sk1&&dirskill!=sk5//skill is not already selected skill
				return true
    
		    dirskill++;
	    }
    
	    return false



}
