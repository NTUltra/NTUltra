function scrSkillLeft(skills) {
	//Run in LevCont
	//Checks if there are still skills that you haven't taken.
	    //freespot = false
	    var dirskill = 1
	    repeat(maxskill)
	    {
			if (!Player.skill_got[dirskill] && !array_contains(skills,dirskill))
			{
				return true;
			}
			dirskill++;
	    }
	    return false
}
