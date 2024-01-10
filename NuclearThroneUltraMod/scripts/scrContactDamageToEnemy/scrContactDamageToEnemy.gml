///scrContactDamageToEnemy();
// /@description
///@param other
function scrContactDamageToEnemy(hitEnemy){
	if hitEnemy.team != team && team != 0
	{
		var actuallyDead = false;
		if hitEnemy.team != 0//Dealing the damage with gamma guts
		{
			var contactDmg = 0;
			if skill_got[8]
			{
				if race == 25
					contactDmg = 8//dmg dealt by gamma guts
				else
					contactDmg = 7//dmg dealt by gamma guts (if you want to change it also change it in AngelActive
			}
			if race == 15 //Atom
			{
				contactDmg += 2+min(4,loops);
				if ultra_got[58]
					contactDmg += 6;
			}
			if contactDmg > 0 && PlayerAlarms2.alarm[3] < 1 && !justAsheep
			{
				if UberCont.normalGameSpeed == 60
				{
					PlayerAlarms2.alarm[3] = 1;
					
				}
				snd_play(sndGammaGutsProc);
				with hitEnemy
				{
					my_health -= contactDmg//dmg dealt by gamma guts
					var dmgTaken = scrCallculateFinalDamage(contactDmg);
					if my_health - dmgTaken <= 0
					{
						actuallyDead = true;	
					}
					/*
					var dmgTaken = contactDmg
					if other.race == 26//HUMPHRY mr damage
					{
						dmgTaken = scrHumphryDamage(dmgTaken);
						if my_health - dmgTaken <= 0
						{
							actuallyDead = true;	
						}
					}
					if other.ultra_got[105] && other.skill_got[8]
					{
						//Predict if its dead with the damage buff here.
						dmgTaken = scrHandsDamageBuff(dmgTaken);
						if my_health - dmgTaken <= 0
						{
							actuallyDead = true;	
						}
					}
					if other.ultra_got[29] && other.altUltra && other.bwep == 0
					{
						dmgTaken = dmgTaken * 1.25;
						if my_health - dmgTaken <= 0
						{
							actuallyDead = true;	
						}
					}
					if other.skill_got[37] //&& hitEnemy.my_health >= hitEnemy.maxhealth
				    {
						var part = 0.3;
						if other.race == 25 //Doctor
							part = 0.35;
						if other.ultra_got[62] && other.altUltra && other.armour > 0 && other.maxarmour > 0
						{
							//Living armour
							if other.maxarmour > 1
								dmgTaken *= 1 + (((other.armour - 1) / max(other.maxarmour - 1,2)) * part);
							else
								dmgTaken *= 1 + part;
						}
						else if other.my_health > 0 && other.maxhealth > 0
						{
							if other.maxhealth > 1
								dmgTaken *= 1 + (((other.my_health - 1) / max(other.maxhealth - 1,2)) * part);
							else
								dmgTaken *= 1 + part;
						}
						if my_health - dmgTaken <= 0
						{
							actuallyDead = true;	
						}
					}
					*/
					sprite_index = spr_hurt
					image_index = 0
					if meleedamage > 0
						motion_add(point_direction(other.x,other.y,x,y),0.4)
					else
						motion_add(point_direction(other.x,other.y,x,y),3)
					scrSheepHit();
				}
				if (hitEnemy.my_health <= 0 && skill_got[8] || actuallyDead)//gamma guts kill?
				{
					snd_play(sndGammaGutsKill,0,true);
					instance_create(x,y,GammaGutsBlast);
				}
			}
			if ultra_got[94]//elementor coldheart
			{
				with hitEnemy
				{
					if my_health > 0
					{
						if alarm[11]<1 {
							frozen=true;
							with instance_create(x,y,FrozenEnemy)
							{
								var s = min(2,other.mySize)
								image_xscale=s*choose(1,-1);
								image_yscale=s;
								xx=other.x
								yy=other.y
								debrisAmount = 3;
								owner=other.id;
							}
							alarm[11]+=20;
						if alarm[1] > 0
								alarm[1] += 10;
						}
						else if alarm[1] > 0
						{
							alarm[1] += 10;
						}
					}
				}
			}
		}

		if hitEnemy.meleedamage > 0 && hitEnemy.existTime > 25 && !justAsheep && !hitEnemy.isSnooze && !instance_exists(HumphryDiscipline)//is it a melee enemy?
		&& collision_line(x,y,hitEnemy.x,hitEnemy.y,Wall,false,false) == noone
		{
			if meleeimmunity < 1
			{
				if  alarm[3] < 1
				{
					meleeimmunity = hurtDuration;
				    if (hitEnemy.my_health<=0 || actuallyDead)
				    {
				    }
				    else {//if !(KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2){//Ultra D Humphry no contact damage
				    //enemy deals damage to the player
    
				        if sprite_index != spr_hurt
				        {
					        snd_play(hitEnemy.snd_melee)
							hitBy = hitEnemy.sprite_index;
					        sprite_index = spr_hurt
					        image_index = 0
					        snd_play(snd_hurt, hurt_pitch_variation)
							if skill_got[8]
								my_health -= ceil(hitEnemy.meleedamage*0.5);
							else
								my_health -= hitEnemy.meleedamage
					        motion_add(point_direction(hitEnemy.x,hitEnemy.y,x,y)+180,8)
        
					        with hitEnemy
							{
								move_contact_solid(point_direction(other.x,other.y,x,y)+180,4);
								speed = 0;
								walk = min(walk,5);
								alarm[1] += 10;
							}
				
							if hitEnemy.object_index == IDPDVan
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
				else
				{
					snd_play(sndDamageNegate,0.1,true);
					hitEnemy.existTime = 5;
					//Acts as sound delay I guess
				}
			}
		}
	}
}