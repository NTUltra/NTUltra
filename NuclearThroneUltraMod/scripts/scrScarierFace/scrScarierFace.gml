///xxx();
// /@description
///@param
function scrScarierFace(theDamage, isPerFrame){
	if (Player.skill_got[11]) {
		my_health -= Player.excessDamageDeal;
		var pe = Player.excessDamageDeal;
		BackCont.shake += min(pe*0.5,10);
		if pe > 30 {
			snd_play(sndExplosion,0.1);
			instance_create(x,y,Smoke);
			with instance_create(x,y,Smoke)
			{
				motion_add(other.direction,other.speed*0.25);	
			}
			with instance_create(x,y,Smoke)
			{
				motion_add(other.direction,other.speed*0.1);	
			}
		} else if pe > 10 {
			snd_play(sndExplosionS,0.1);
			if pe > 20
			{
				with instance_create(x,y,Smoke)
				{
					motion_add(other.direction,other.speed*0.1);	
				}
			}
			instance_create(x,y,Smoke);
		}
		Player.excessDamageDeal = 0;
		//my_health = prevhealth - dmgTaken;
		if (my_health < 0) {
			var part = -0.85;
			if Player.race == 25 //Doctor
				part -= 0.03;
			if (isPerFrame && UberCont.normalGameSpeed == 60)
			{
				var halfPart = (1 - abs(part)) * 0.5;
				part -= halfPart;
				debug(part);
			}
			Player.excessDamageDeal += my_health * part;
		}
	}
}