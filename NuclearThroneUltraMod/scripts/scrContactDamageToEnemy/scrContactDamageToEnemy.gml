///scrContactDamageToEnemy();
// /@description
///@param other
function scrContactDamageToEnemy(hitEnemy){
	if !isInvisible && hitEnemy.team != team && team != 0
	{
		var actuallyDead = false;
		if hitEnemy.team != 0//Dealing the damage with gamma guts
		{
			var contactDmg = 0;
			if skill_got[8]
			{
				if race == 25
					contactDmg = 9//dmg dealt by gamma guts
				else
					contactDmg = 7//dmg dealt by gamma guts (if you want to change it also change it in AngelActive
				contactDmg += loops;
			}
			if race == 15 //Atom
			{
				contactDmg += 2 + loops;
				if ultra_got[58]
					contactDmg += 6;
			}
			if contactDmg > 0 && instance_exists(PlayerAlarms2) && PlayerAlarms2.alarm[3] < 1 && !justAsheep
			{
				if UberCont.normalGameSpeed == 60
				{
					PlayerAlarms2.alarm[3] = 1;
					
				}
				snd_play(sndGammaGutsProc);
				with hitEnemy
				{
					var dmgTaken = scrCalculateFinalDamage(contactDmg);
					if my_health - dmgTaken <= 0
					{
						actuallyDead = true;
					}
					DealDamage(contactDmg,true,true,false)//dmg dealt by gamma guts
					sprite_index = spr_hurt
					image_index = 0
					if meleedamage > 0
						motion_add(point_direction(other.x,other.y,x,y),0.4)
					else
						motion_add(point_direction(other.x,other.y,x,y),3)
					// scrSheepHit();
				}
				if (hitEnemy.my_health <= 0 && skill_got[8] || actuallyDead)//gamma guts kill?
				{
					snd_play(sndGammaGutsKill,0,true);
					alarm[3] = max(3,alarm[3]);
					instance_create(x,y,GammaGutsProjectileDestroyer)
					with hitEnemy
					{
						instance_create(x,y,GammaGutsProjectileDestroyer)
					}
					instance_create(x,y,GammaGutsBlast);
				}
			}
			if ultra_got[94]//elementor coldheart
			{
				with hitEnemy
				{
					scrFreezeTarget(20);
				}
			}
		}

		if hitEnemy.meleedamage > 0 && hitEnemy.existTime > 18 && !justAsheep && !hitEnemy.isSnooze && !instance_exists(HumphryDiscipline)//is it a melee enemy?
		&& hitEnemy.frozen == noone && hitEnemy.alarm[11] < 1 && !collision_line(x,y,hitEnemy.x,hitEnemy.y,Wall,false,false)
		{
			var isTrapped = false;
			if skill_got[maxskill + 1] && instance_exists(Tangle)
			{
				with hitEnemy
				{
					if place_meeting(x,y,Tangle)
						return;
				}
			}
			if meleeimmunity < 1 && alarm[3] < 1 && mask_index != mskPickupThroughWall
			{
				if loops > 0
					meleeimmunity = hurtDurationLoop - 1;
				else
					meleeimmunity = hurtDuration - 1;
				if (hitEnemy.my_health<=0 || actuallyDead)
				{
				}
				else {//if !(KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2){//Ultra D Humphry no contact damage
				//enemy deals damage to the player
    
				    if sprite_index != spr_hurt
				    {
					    snd_play(hitEnemy.snd_melee)
						hitBy = hitEnemy.spr_idle;
					    sprite_index = spr_hurt
					    image_index = 0
					    snd_play(snd_hurt, hurt_pitch_variation)
						if skill_got[8]
						{
							if race == 25
								DealDamage(ceil(hitEnemy.meleedamage*0.25),false,false,false);
							else
								DealDamage(ceil(hitEnemy.meleedamage*0.5),false,false,false);
						}
						else
						{
							DealDamage(hitEnemy.meleedamage,false,false,false)
							if hitEnemy.venomous {
								scrApplyEnemyVenom(hitEnemy.team,id);
							}
						}
					    motion_add(point_direction(hitEnemy.x,hitEnemy.y,x,y)+180,8)
        
					    with hitEnemy
						{
							var away = point_direction(x,y,other.x,other.y)
							move_contact_solid(away,4);
							motion_add(away,8)
							speed = 0;
							walk = min(walk,5);
							alarm[1] += 15;
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