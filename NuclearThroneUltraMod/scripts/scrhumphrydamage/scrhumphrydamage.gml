///scrHumphryDamage();
// /@description
///@param dmgTaken
function scrHumphryDamage(dmgTaken, applySkill = false){
	var newDmg = dmgTaken + (dmgTaken * Player.humphrySkill*0.0025);//0.01 originally
	if applySkill && !instance_exists(CantGainSkill) && !instance_exists(HumphryDiscipline)
	{
		var boost = 1;
		if  (Player.loops < 1 && (Player.humphrySkill < 10 || instance_number(enemy) < 30))
			boost += 0.125;
		if Player.ultra_got[101] {
			boost += 0.5;
		}
		Player.humphrySkill += dmgTaken * boost;//This should be original damage so no other dmg buffs before this
	}
	return newDmg;
}