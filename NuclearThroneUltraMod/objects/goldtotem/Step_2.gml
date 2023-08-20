/// @description Copy paste damage indicator from enemy code
///Damage indicator

if prevhealth > my_health
{
	var dmgTaken = prevhealth-my_health;//Damage increase
	if instance_exists(Player)
	{
		if Player.race == 26//HUMPHRY mr damage
		{
			dmgTaken = scrHumphryDamage(dmgTaken);
		}
		if Player.ultra_got[105]
		{
			dmgTaken = scrHandsDamageBuff(dmgTaken);
		}
		if ( (Player.skill_got[5] = 1) && (Player.race=11))//HUNTER THRONE BUTT
		{
			if dmgTaken > 0
			    with Marker
			    {
				    if instance_exists(enemy)&&instance_exists(target)
				    {
					    if other.id=target.id
					    {
							other.my_health -= dmgTaken*0.2;
					    }
				    }
        
			    }
		}
		//HUNTERS A ULTRA
		if (Player.ultra_got[41]==1 )
		{
			if(point_distance(x,y,Player.x,Player.y)<100)
		    {
				var damageDeal = dmgTaken * point_distance(x,y,Player.x,Player.y)*0.001;
		    }
		    else
		    {
				var damageDeal = dmgTaken * point_distance(x,y,Player.x,Player.y)*0.0026;
		    }
			dmgTaken += damageDeal;
		}
		if (Player.skill_got[37]) //ANGEL Ultra tranquility
		{
		    var part = 0.25;
			if Player.race == 25 //Doctor
				part = 0.3;
			if Player.ultra_got[62] && Player.altUltra && Player.armour > 0 && Player.maxarmour > 0
			{
				//Living armour
				if Player.maxarmour > 1
					dmgTaken *= 1 + (((Player.armour - 1) / max(Player.maxarmour - 1,2)) * part);
				else
					dmgTaken *= 1 + part;
			}
			else if Player.my_health > 0 && Player.maxhealth > 0
			{
				if Player.maxhealth > 1
					dmgTaken *= 1 + (((Player.my_health - 1) / max(Player.maxhealth - 1,2)) * part);
				else
					dmgTaken *= 1 + part;
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
	prevhealth = my_health;
}
