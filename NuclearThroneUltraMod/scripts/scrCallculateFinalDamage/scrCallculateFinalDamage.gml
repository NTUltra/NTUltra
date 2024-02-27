///xxx();
// /@description
///@param
function scrCallculateFinalDamage(inputDamage){
	var dmgDeal = inputDamage;
	with Player
	{
		if race == 26//HUMPHRY mr damage
		{
			dmgDeal = scrHumphryDamage(dmgDeal);
		}
		if ultra_got[105]
		{
			dmgDeal = scrHandsDamageBuff(dmgDeal);
		}
		if ultra_got[29] && altUltra && bwep == 0
		{
			dmgDeal = dmgDeal*1.20;
		}
		if ( (skill_got[5]) && (race == 11))//HUNTER THRONE BUTT
		{
			if dmgDeal > 0
			{
				var resultdmgDeal = dmgDeal;
				with Marker
				{
					if instance_exists(target)
					{
						if other.id == target.id
						{
							// other.my_health -= dmgDeal*0.3;
							resultdmgDeal += (dmgDeal*0.3);
						}
					}
        
				}
				dmgDeal = resultdmgDeal;
			}
		}
		//HUNTERS A ULTRA
		if (ultra_got[41])
		{
			var damageDeal = 0;
			if(point_distance(other.x,other.y,x,y)<100)
			{
				damageDeal = dmgDeal * point_distance(other.x,other.y,x,y)*0.0011;
			}
			else
			{
				damageDeal = dmgDeal * point_distance(other.x,other.y,x,y)*0.003;
			}
			dmgDeal += damageDeal;
		}
		if (skill_got[37]) //ECSTATIC FISTS
		{
			var part = 0.34;
			if race == 25 //Doctor
				part = 0.4;
			var dmgBuff = 1;
			if ultra_got[62] && altUltra && armour > 0 && maxarmour > 0
			{
				//Living armour
				if maxarmour > 1
					dmgBuff = 1 + (((armour - 1) / max(maxarmour - 1,2)) * part);
				else
					dmgBuff = 1 + part;
			}
			else if my_health > 0 && maxhealth > 0
			{
				if maxhealth > 1
					dmgBuff = 1 + (((my_health - 1) / max(maxhealth - 1,2)) * part);
				else
					dmgBuff = 1 + part;
			}
			dmgDeal *= dmgBuff;
			dmgDeal = dmgDeal - frac(dmgDeal*10)*0.1
		}
		if (skill_got[11]) {
			dmgDeal += excessDamageDeal;
		}
	}
	return dmgDeal;
}