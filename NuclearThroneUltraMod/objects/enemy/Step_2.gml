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
	var dmgTaken = prevhealth-my_health;//Damage increase
	if instance_exists(Player)
	{
		if Player.ultra_got[105]
		{
			dmgTaken = scrHandsDamageBuff(dmgTaken);
			my_health = prevhealth - dmgTaken;
		}
		if Player.ultra_got[29] && Player.altUltra && Player.bwep == 0
		{
			dmgTaken = dmgTaken*1.20;
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
			{
				var resultDmgTaken = dmgTaken;
			    with Marker
			    {
				    if instance_exists(enemy)&&instance_exists(target)
				    {
					    if other.id=target.id
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
