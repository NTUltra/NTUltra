///scrHumphryDamage();
// /@description
///@param dmgTaken
function scrHumphryDamage(dmgTaken, applySkill = false){
	var newDmg = dmgTaken + (dmgTaken * Player.humphrySkill*0.0025);//0.01 originally
	if applySkill
	{
		if Player.ultra_got[101] {
			Player.humphrySkill += dmgTaken*1.5;
		}
		else
		{
			Player.humphrySkill += dmgTaken;//This should be original damage so no other dmg buffs before this
		}
		//scrUnlockCSkin
		if Player.humphrySkill >= 1000
		{
			scrUnlockCSkin(26,"FOR REACHING 1000 SKILL", 0);
		}
	}
	return newDmg;
}