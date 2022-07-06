function scrCheckStartingWepUnlocked(argument0, char) {
	with UberCont
	{
		//run this in ubercont object
		var dir=0;
		repeat(maxstartwep+1)
		{
			//you have not unlocked this weapon?
			if start_wep_have[dir,char]==0
			{
			    //if that weapon is the one I am targeting
			    if start_wep[dir]==argument0
			    {
					return dir;
			    }
			}
			dir++;
		}
		return -1;
	}
}
