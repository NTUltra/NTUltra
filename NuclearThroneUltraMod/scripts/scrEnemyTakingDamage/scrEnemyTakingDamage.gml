///scrEnemyTakingDamage();
// /@description
///@param
function scrEnemyTakingDamage() {
	if prevhealth > my_health
	
	{
		var dmgTaken = prevhealth - my_health;//Damage increase
		var ogDmgTaken = dmgTaken;
		if super
		{
			//Negate healing
			if UberCont.normalGameSpeed == 60
				dmgTaken += 0.05;
			else
				dmgTaken += 0.1;
		}
		if instance_exists(Player)
		{
			if Player.race == 26 || Player.copyPassive == 26//HUMPHRY mr damage
			{
				dmgTaken = scrHumphryDamage(dmgTaken,true);
			}
			if Player.ultra_got[105]
			{
				dmgTaken = scrHandsDamageBuff(dmgTaken);
			}
			if Player.ultra_got[29] && Player.altUltra && Player.bwep == 0
			{
				dmgTaken = dmgTaken*1.20;
			}
			if ( (Player.skill_got[5]) && (Player.race == 11))//HUNTER THRONE BUTT
			{
				if dmgTaken > 0
				{
					var resultDmgTaken = dmgTaken;
				    with Marker
				    {
					    if instance_exists(target)
					    {
						    if other.id == target.id
						    {
								other.my_health -= dmgTaken*0.3;
								resultDmgTaken += (dmgTaken*0.3);
						    }
					    }
        
				    }
					dmgTaken = resultDmgTaken;
				}
			}
			//HUNTERS A ULTRA
			if (Player.ultra_got[41])
			{
				if(point_distance(x,y,Player.x,Player.y)<100)
			    {
					var damageDeal = dmgTaken * point_distance(x,y,Player.x,Player.y)*0.0011;
			    }
			    else
			    {
					var damageDeal = dmgTaken * point_distance(x,y,Player.x,Player.y)*0.003;
			    }
				dmgTaken += damageDeal;
			}
			if (Player.skill_got[37]) //ECSTATIC FISTS
			{
				var part = 0.3333333333333333333333333333333;
				if Player.race == 25 //Doctor
					part = 0.42;
				var dmgBuff = 1;
				if Player.ultra_got[62] && Player.altUltra && Player.armour > 0 && Player.maxarmour > 0
				{
					//Living armour
					if Player.armour > Player.maxarmour
						dmgBuff = 1 + (((8 + Player.armour - Player.maxarmour - 1) / max(8 - 1,2)) * part);
					else if Player.maxarmour > 1
						dmgBuff = 1 + (((Player.armour - 1) / max(Player.maxarmour - 1,2)) * part);
					else
						dmgBuff = 1 + part;
				}
				else if Player.my_health > 0 && Player.maxhealth > 0
				{
					if Player.my_health > Player.maxhealth
					{
						dmgBuff = 1 + (((8 + Player.my_health - Player.maxhealth - 1) / max(8 - 1,2)) * part);
					}
					else if Player.maxhealth > 1
						dmgBuff = 1 + (((Player.my_health - 1) / max(Player.maxhealth - 1,2)) * part);
					else
						dmgBuff = 1 + part;
				}
				dmgTaken *= dmgBuff;
				dmgTaken = dmgTaken - frac(dmgTaken*10)*0.1
				if Player.my_health > Player.maxhealth
				{
					with instance_create_depth(x,y,depth - 1,ImpactFX)
					{
						var reduc = 0.03
						var size = clamp(power(dmgTaken*reduc,0.5),0.2,2.5);
						BackCont.shake += size*2;
						sprite_index = sprEcstaticFXPlusUltra;	
					}
				}
				else if Player.my_health == Player.maxhealth
				{
					with instance_create_depth(x,y,depth - 1,ImpactFX)
					{
						var reduc = 0.025;
						var size = clamp(power(dmgTaken*reduc,0.5),0.15,2.5);
						BackCont.shake += size*2;
						sprite_index = sprEcstaticFX;	
					}
				} else if Player.my_health > ceil(Player.maxhealth*0.5)
				{
					with instance_create_depth(x,y,depth - 1,ImpactFX)
					{
						var reduc = 0.02;
						var size = clamp(power(dmgTaken*reduc,0.5),0.15,2);
						sprite_index = sprEcstaticFXMinor;	
					}
				}
			}
			my_health = prevhealth - dmgTaken;
			if UberCont.opt_dmgindicator
		    {
				var offset = sprite_height*0.5;
				if offset >= 48
				{
					offset = 0;
				}
				var newDmg = true;
				if instance_exists(DamageNumbers)
				{
					var o = instance_nearest(x, y - offset, DamageNumbers);
					if o != noone && o.owner = id
					&& point_distance(x,y - offset,o.x,o.y) < 32 + offset
					{
						newDmg = false;
						with o
						{
							dmg += dmgTaken;
							var dir = point_direction(x,y,other.x,other.y - offset)
							x += lengthdir_x(3,dir);
							y += lengthdir_y(3,dir);
							motion_add(dir,2);
							speed = max(speed,other.speed*0.5);
							event_user(1);
						}
					}
				}
				if newDmg
				{
					with instance_create(x,y, DamageNumbers)
					{
						owner = other.id;
						speed = other.speed;
						direction = other.direction;
						dmg = dmgTaken;
						event_user(1);
					}
				}
		    }
		}
		scrSheepHit();
	}
	prevhealth = my_health;
}