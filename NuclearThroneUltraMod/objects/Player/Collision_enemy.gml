motion_add(point_direction(other.x,other.y,x,y),other.size*0.5)
if other.team != team
{
	var actuallyDead = false;
	if other.team != 0//Dealing the damage with gamma guts
	{
		var contactDmg = 0;
		if skill_got[8]
		{
			if race==25
				contactDmg = 8//dmg dealt by gamma guts
			else
				contactDmg = 7//dmg dealt by gamma guts
			
		}
		if race == 15 //Atom
		{
			contactDmg += 2;
			if ultra_got[58]
				contactDmg += 6;
		}
		if contactDmg > 0
		{
			snd_play(sndGammaGutsProc);
			with other
			{
				my_health -= contactDmg//dmg dealt by gamma guts
				if other.ultra_got[105] && other.skill_got[8]
				{
					//Predict if its dead with the damage buff here.
					var dmgTaken = scrHandsDamageBuff(contactDmg);
					if my_health - dmgTaken <= 0
					{
						actuallyDead = true;	
					}
				}
				sprite_index = spr_hurt
				image_index = 0
				motion_add(point_direction(other.x,other.y,x,y),3)
    
				    if Player.race==13 && Player.ultra_got[50]==0{//Sheep passive
				    if other.team=Player.team{
				    if Player.justAsheep
				    {Player.justAsheep=false;
				    instance_create(x,y-16,Notice);
				    }}}
			}
			if (other.my_health <= 0 && skill_got[8] || actuallyDead)//gamma guts kill?
			{
				snd_play(sndGammaGutsKill,0,true);
				instance_create(x,y,GammaGutsBlast);
			}
		}
	}

	if other.meleedamage > 0 && other.existTime > 25 && meleeimmunity<1 && alarm[3] < 1//is it a melee enemy?
	{
	meleeimmunity=14;
	    if (other.my_health<=0 || actuallyDead)
	    {
	    }
	    else {//if !(KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2){//Ultra D Humphry no contact damage
	    //enemy deals damage to the player
    
	        if sprite_index != spr_hurt
	        {
		        snd_play(other.snd_melee)
		        sprite_index = spr_hurt
		        image_index = 0
		        snd_play(snd_hurt, hurt_pitch_variation)
				if skill_got[8]
					my_health -= ceil(other.meleedamage*0.5);
				else
					my_health -= other.meleedamage
		        motion_add(point_direction(other.x,other.y,x,y)+180,8)
        
		        with other
		        move_contact_solid(point_direction(other.x,other.y,x,y)+180,4);
				
				if other.object_index == IDPDVan
				{
					if my_health <= 0
						scrUnlockGameMode(8,"FOR GETTING HIT BY A VAN#I AM SO SORRY");
					else
						scrUnlockGameMode(8,"FOR GETTING HIT BY A VAN");
				}
        
		        Sleep(100)
	        }
	    }
	}
}
