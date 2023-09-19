if alarm[11] > 1 && frozen//Frozen
{
	/*
if alarm[1] > 1 && alarm[1] < 3
{
	alarm[1]=4;
	alarm[11] -= 1;
}*/
	if alarm[1] < 2
	{
		frozen = false
	}
	else if alarm[11] < 10
	{
		frozen = false;
	}

	if instance_exists(Player)
	{
		if Player.race!=3 && !(KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2)
		{
		x=xprevious;
		y=yprevious;

		if sprite_index!=spr_hurt && Player.race=24//Elementor's passive
		{
			my_health-=0.5;
			snd_play(snd_hurt, hurt_pitch_variation);
			sprite_index=spr_hurt
		}

		}
	speed=0;
	target=-1;
	//image_speed=0;
	}
}

///Damage indicator

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
		if Player.race == 26//HUMPHRY mr damage
		{
			dmgTaken = scrHumphryDamage(dmgTaken);
		}
		if Player.ultra_got[105]
		{
			dmgTaken = scrHandsDamageBuff(dmgTaken);
		}
		if Player.ultra_got[29] && Player.altUltra && Player.bwep == 0
		{
			dmgTaken = dmgTaken*1.20;
		}
		if ( (Player.skill_got[5] = 1) && (Player.race=11))//HUNTER THRONE BUTT
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
							other.my_health -= dmgTaken*0.2;
							resultDmgTaken += (dmgTaken*0.2);
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
				var damageDeal = dmgTaken * point_distance(x,y,Player.x,Player.y)*0.001;
		    }
		    else
		    {
				var damageDeal = dmgTaken * point_distance(x,y,Player.x,Player.y)*0.0026;
		    }
			dmgTaken += damageDeal;
		}
		if (Player.skill_got[37]) //ECSTATIC FISTS
		{
			var part = 0.3;
			if Player.race == 25 //Doctor
				part = 0.35;
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
			if Player.my_health >= Player.maxhealth
			{
				instance_create(x,y,Smoke);	
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
