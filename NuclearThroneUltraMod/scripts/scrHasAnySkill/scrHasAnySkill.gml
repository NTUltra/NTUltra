///xxx();
// /@description
///@param
function scrHasAnySkill(){
	with Player {
		var dir = 0;
		repeat(maxskill+1)
		{
			if skill_got[dir]
				return true;
			dir++;
		}
	}
	return false;
}