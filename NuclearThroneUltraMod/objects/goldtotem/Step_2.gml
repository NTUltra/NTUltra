/// @description Copy paste damage indicator from enemy code
///Damage indicator

if prevhealth > my_health
{
	var dmgTaken = prevhealth-my_health;//Damage increase
	if instance_exists(Player)
	{
		if Player.race == 26//HUMPHRY mr damage
		{
			scrHumphryDamage(dmgTaken);
		}
		if Player.ultra_got[105]
		{
			dmgTaken = scrHandsDamageBuff(dmgTaken);
			my_health = prevhealth - dmgTaken;
		}
		if (Player.ultra_got[71] == 1) //ANGEL Ultra tranquility
		{
		    if Player.my_health >= Player.maxhealth
		    {
				dmgTaken *= 1.75;
			    repeat(max(1,ceil(dmgTaken*0.2)))
			    {
					with instance_create(x+random(16)-8,y+random(16)-8,Feather)
						motion_add(random(360),5+random(10) );
				}
				my_health = prevhealth - dmgTaken;
		    }
		}
		if ( (Player.skill_got[5] = 1) && (Player.race=11))//HUNTER THRONEBUTT
		{
			var dmgTaken = prevhealth-my_health;
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
				my_health -= damageDeal//point_distance(x,y,Player.x,Player.y)/82;//82;
		    }
		    else
		    {
				var damageDeal = dmgTaken * point_distance(x,y,Player.x,Player.y)*0.0026;
				my_health -= damageDeal;//point_distance(x,y,Player.x,Player.y)/29//28;
		    }
			dmgTaken += damageDeal;
		}
		
		if UberCont.opt_dmgindicator
	    {
	        with instance_create(x+irandom(16)-16,y+irandom(16)-16,PopupText)
	        {
		        theColour=c_orange;
		        mytext=string(dmgTaken)
		        time = 6
		        alarm[1] = 1;
		        blink=false;
		        vspeed = irandom(3)-1;
		        hspeed = irandom(3)-1;
	        }
	    }
	}
	prevhealth = my_health;
}
