///xxx();
// /@description
///@param
function scrScarierFace(theDamage, isPerFrame){
	if (instance_exists(Player) && Player.skill_got[11]) {
		var flatDmg = 0.5;
		if Player.race == 25
			flatDmg += 0.15
		if isPerFrame
			my_health -= min(theDamage * 0.5,((flatDmg - 0.1)*0.5));
		else
			my_health -= min(theDamage,flatDmg);
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
			var part = -0.65;
			if my_health < - 150
			{
				part = -0.1;
			}
			else if my_health < - 100
			{
				part = -0.2;
			}
			else if my_health < - 90
			{
				part = -0.4;
			}
			else if my_health < - 80
			{
				part = -0.65;
			} else if my_health < - 50
			{
				part = - 0.7;
			}
			if Player.race == 25 //Doctor
				part -= 0.15;
			if (isPerFrame && UberCont.normalGameSpeed == 60)
			{
				var halfPart = (1 - abs(part)) * 0.5;
				part -= halfPart;
			}
			Player.excessDamageDeal += my_health * part;
		}
	}
}