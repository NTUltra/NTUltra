/// @description WepPickup
if instance_exists(WepPickup) && !instance_exists(GenCont) && !instance_exists(LevCont)  && !instance_exists(SpiralCont){

	if point_distance(x,y,instance_nearest(x,y,WepPickup).x,instance_nearest(x,y,WepPickup).y)<36
	{

	targetPickup=instance_nearest(x,y,WepPickup);

	var isGold = false;
	//UNLOCK GOLDEN WEAPON
	if scrCheckGold(wep_name[targetPickup.wep])
	{
		isGold = true;
		scrUnlockGoldWeapon(targetPickup.wep);
	}
	//first get ammo
	if targetPickup.ammo > 0 and (wep_type[targetPickup.wep] != 0 || ultra_got[68])
	{
		ammoMultiple = 2;
		if ultra_got[68]
		{
			ammoMultiple = 4;
			if wep_type[targetPickup.wep] == 0
				ammoMultiple = 0;
			var allammotypes=5;
			repeat(5)
			{
				ammo[allammotypes] += typ_ammo[allammotypes]
				if ammo[allammotypes] > typ_amax[allammotypes]
					ammo[allammotypes] = typ_amax[allammotypes]
				if (UberCont.opt_ammoicon)
				{
					dir = instance_create(x,y,PopupText);
					dir.sprt = sprAmmoIconsPickup
					dir.ii = allammotypes-1;
					dir.mytext = "+"+string(typ_ammo[allammotypes]);
					if ammo[allammotypes] = typ_amax[allammotypes]
						dir.mytext = "MAX";
				}
				else
				{
					dir = instance_create(x,y,PopupText)
					dir.mytext = "+"+string(typ_ammo[allammotypes])+" "+string(typ_name[allammotypes])
					if ammo[allammotypes] = typ_amax[allammotypes]
						dir.mytext = "MAX "+string(typ_name[allammotypes])
				}
				allammotypes--;
			}
			snd_play(sndAmmoPickup);
			var num = 3;
			if skill_got[9]//Second stomache
				num = 6;
			if my_health < maxhealth
				my_health += clamp(my_health+num,my_health,maxhealth);
			if UberCont.opt_ammoicon
			{
				dir = instance_create(x,y,PopupText)
				dir.sprt = sprHPIconPickup;
				dir.mytext = "+"+string(num)
				if my_health = maxhealth
					dir.mytext = "MAX"
				else if my_health > maxhealth
					dir.mytext = "OVER MAX"
			}
			else
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(num)+" HP"
				if my_health = maxhealth
					dir.mytext = "MAX HP"
				else if my_health > maxhealth
					dir.mytext = "OVER MAX HP"
			}
			instance_create(x,y,HealFX);
			snd_play(sndHealthPickup);
			
			scrRaddrop(60);
		}
		if crown == 20 && ammoMultiple > 0//Crown of protection
		{
			ammoMultiple -= 2;
			my_health += 1;
			var num = 1;
			if skill_got[9]//Second stomache
				num = 2;
			if UberCont.opt_ammoicon
			{
				dir = instance_create(x,y,PopupText)
				dir.sprt = sprHPIconPickup;
				dir.mytext = "+"+string(num)
				if my_health > maxhealth
					dir.mytext += "#OVERHEAL!"
			}
			else
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(num)+" HP"
				if my_health > maxhealth
					dir.mytext += "#OVERHEAL!"
			}
			instance_create(x,y,HealFX);
			snd_play(sndHealthPickup,0,true);
		}
			
		if ammoMultiple > 0{
			ammo[wep_type[targetPickup.wep]] += typ_ammo[targetPickup.wep_type[targetPickup.wep]]*ammoMultiple
			if ammo[wep_type[targetPickup.wep]] > typ_amax[targetPickup.wep_type[targetPickup.wep]]
				ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
			snd_play(sndAmmoPickup,0,true);
			if (UberCont.opt_ammoicon)
			{
				dir = instance_create(x,y,PopupText);
				dir.sprt = sprAmmoIconsPickup
				dir.ii = targetPickup.wep_type[targetPickup.wep]-1;
				dir.mytext = "+"+string(typ_ammo[wep_type[targetPickup.wep]]*ammoMultiple);
				if ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
				dir.mytext = "MAX";
			}
			else
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(typ_ammo[wep_type[targetPickup.wep]]*ammoMultiple)+" "+string(typ_name[wep_type[targetPickup.wep]])
				if ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
				dir.mytext = "MAX "+string(typ_name[wep_type[targetPickup.wep]])
			}
		}
		targetPickup.ammo = 0
	}

	if KeyCont.key_pick[p] = 1 && targetPickup.visible == true
	{
		KeyCont.key_pick[p] = 2;
	if curse = 0||targetPickup.curse==curse or bwep = 0 || (cwep = 0 && ultra_got[31])//SWITCH OUR MODS DATA ASWELL!
	{
		if ultra_got[68] == 1//Weapon smith scrapfinder
		{
			snd_play_2d(choose(sndSpark1,sndSpark2),0.1,true);
			var angl = random(360);
			var anglStep = 360 / 3;
			repeat(3)
			{
			with instance_create(x,y,Lightning)
			{image_angle = angl
			accuracy=0;
			team = other.team
			ammo = 16;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle}
			angl += anglStep;
			}
		}
	instance_create(x,y,WepSwap)
	if !isGold
	{
		onlyusemegold = false;	
	}
	if targetPickup.pickedup=false
	weaponspickedup+=1;

	if scrCheckGold(wep_name[targetPickup.wep])
	{
		snd_play(sndGoldPickup);
	}

	//GUN GAME
	if weaponspickedup>=50
	scrUnlockGameMode(11,"FOR PICKING UP 50 WEAPONS THIS RUN")

	//favourable BUILD GAMMODE
	if scrFavourableWeapons(targetPickup.wep)
	scrUnlockGameMode(2,"FOR PICKING UP A FAVOURABLE WEAPON")

	//SKINS
	if targetPickup.wep=328//BLACK SWORD
	scrUnlockBSkin(9,"FOR PICKING UP THE BLACK SWORD",0);

	if targetPickup.wep=329//Dark sword
	scrUnlockCSkin(9,"FOR TOUCHING DEATH ITSELF",0);

	if scrToxicWeapons(targetPickup.wep, wep_name[targetPickup.wep]) && targetPickup.pickedup=false && race = 23
	{
	toxicweaponsfound++;
	if toxicweaponsfound>=2
	scrUnlockBSkin(23,"BY USING 2 DIFFERENT TOXIC WEAPONS#IN ONE RUN AS FROG",0)
	}

	//some one wep only unlocks that odont really count as unlockables
	if targetPickup.wep=298//golden oops gun
	{
	with UberCont
	{
	oneweponly298=1
	scrSave();
	}
	}
	if targetPickup.wep=315//moneygun
	{
		scrUnlockCharacter(20,"FOR STEALING THE MONEY GUN")
	with UberCont
	{
	oneweponly315=1
	scrSave();
	}
	}
	if targetPickup.wep=329//dark sword
	{
	with UberCont
	{
	oneweponly329=1
	scrSave();
	}
	}
	if targetPickup.wep=177//time thrower
	{
	with UberCont
	{
	oneweponly177=1
	scrSave();
	}
	}
	if targetPickup.wep=192//time bomb
	{
	with UberCont
	{
	oneweponly192=1
	scrSave();
	}
	}
	if targetPickup.wep=69//oops gun
	{
	with UberCont
	{
	oneweponly69=1
	scrSave();
	}
	}
	if targetPickup.wep=75//idkwid
	{
	with UberCont
	{
	oneweponly75=1
	scrSave();
	}
	}
	if targetPickup.wep=264//broken ster gun
	{
	with UberCont
	{
	oneweponly298=1
	scrSave();
	}
	}
	if targetPickup.wep=328//black sword
	{
	with UberCont
	{
	oneweponly328=1
	scrSave();
	}
	}
	if targetPickup.wep=231//guitar
	{
	with UberCont
	{
	oneweponly231=1
	scrSave();
	}
	}
	if targetPickup.wep=263//electric guitar
	{
	with UberCont
	{
	oneweponly263=1
	scrSave();
	}
	}
	if targetPickup.wep=214//viking great axe
	{
	with UberCont
	{
	oneweponly214=1
	scrSave();
	}
	}
	if targetPickup.wep=316//hunter heavy sniper
	{
	with UberCont
	{
	oneweponly316=1
	scrSave();
	}
	}


	snd_play(sndWeaponPickup)
	if bwep = 0
	{bcurse = curse
	bwep = wep
	bwepmod1 = wepmod1;
	bwepmod2 = wepmod2;
	bwepmod3 = wepmod3;
	bwepmod4 = wepmod4;
	}
	else if cwep = 0 && ultra_got[31]//robot ultra third wep
	{
		ccurse = curse
		cwep = wep
		cwepmod1 = wepmod1;
		cwepmod2 = wepmod2;
		cwepmod3 = wepmod3;
		cwepmod4 = wepmod4;
	}
	else if wep != 0
	{
		
	with instance_create(targetPickup.x,targetPickup.y,WepPickup)
	{
	pickedup=true;
	scrWeapons()
	wep = other.wep
	name = wep_name[wep]
	type = wep_type[wep]
	curse = other.curse
	wepmod1=other.wepmod1;
	wepmod2=other.wepmod2;
	wepmod3=other.wepmod3;
	wepmod4=other.wepmod4;
	/*WEAPON MODS
	mod1[]
	mod2[]
	mod3[]
	0 nothing
	1 toxic
	2 explosive
	3 flame
	4 frost
	5 blood
	6 lightning
	7 kraken
	*/


	sprite_index = wep_sprt[wep]
	ammo = 0
	}
	}
	if targetPickup.wep = 239//ROCKET GLOVE GM UNLOCK
	scrUnlockGameMode(13,"FOR PICKING UP A ROCKET GLOVE")

	wep = targetPickup.wep
	curse = targetPickup.curse
	wepmod1 = targetPickup.wepmod1
	wepmod2 = targetPickup.wepmod2
	wepmod3 = targetPickup.wepmod3
	wepmod4 = targetPickup.wepmod4
	can_shoot = 1
	reload = min(reload,0)
	queueshot = 0;
	if skill_got[35]
	{
		var lowa = wep_load[wep]*-2;
		if reload <= lowa*0.5 && queueshot < 1
		{
			queueshot++;
			scrPlayReloadSound(wep);
		} else if reload <= lowa && queueshot < 2
		{
			queueshot++;
			scrPlayReloadSound(wep);
		}
	}

	if wep=298//golden oops gun
	game_end();


	snd_play(wep_swap[wep])
	if (curse)
	{
		snd_play(sndSwapCursed);
	}
	if (scrCheckGold(wep_name[targetPickup.wep]))
	{
		snd_play(sndSwapGold);	
	}
	dir = instance_create(x,y,PopupText)
	dir.mytext = string(wep_name[wep])+"!"

		//Done picking up
		scrWeaponHold();
		with targetPickup
			instance_destroy()
		}
		if ( wep != 0 && bwep != 0 && cwep != 0 && scrMeleeWeapons(wep) && scrMeleeWeapons(bwep) && scrMeleeWeapons(cwep))
		{
			scrUnlockGameMode(31,"FOR HOLDING#THREE MELEE WEAPONS");
		}
	}


	} else
		targetPickup = noone;
}
else
	targetPickup = noone;

var tookHit = false;
if my_health < prevhealth
{
	tookHit = true;
	//Insakill
	if !exception && alarm[3] < 1
	{
		noHit = 0;
		if UberCont.opt_gamemode == 32 || ultra_got[109]
		{
			my_health = 0;
			prevhealth = 0;
		}
	}
}
//Extra feet consider failed dodge
if skill_got[2] && tookHit && !exception
{
	extrafeetalarm = 26;
	extrafeetdodged = false;
}

///tough shell
var damageReduced = 0;
if (skill_got[31])
{
	if (tookHit && hardshell == true )
	{
	var dmgTaken = prevhealth-my_health;
	    if (( dmgTaken > 4 ) && ( prevhealth-4 != 0 ) && race = 25  )
	    {
	    my_health+=2;
		damageReduced += 2;
	    hardshell=false;
	    }
	    else if (( dmgTaken > 1 ) && ( prevhealth-1 != 0 )  )
	    {
	    my_health+=1;
		damageReduced += 1;
	    hardshell=false;
	    }
		if damageReduced > 0
		{
			snd_play(sndHitRock);
			repeat(4)
			with instance_create(x,y,Debris)
			{
				speed *= 1.6;
			}
		}
	}

	if (sprite_index!=spr_hurt)
		hardshell=true;
}

/* */
///Rogue blast armour
if race=22
{
	if tookHit//&&sprite_index=spr_hurt
	{
		event_user(0);
	}
}

/* */
///imunity codes
if ultra_got[48]&&lag>0
{
if tookHit&&my_health!=maxhealth&&alarm[3]<1
{lag-=1;


alarm[3] = max(alarm[3],15);//before your lag lowers again}
resetPrevHealth = true;
}
}

if race=16 || race = 17 || race = 19 || race = 20 || race = 21//Viking and Gunsmith use armour and Skeleton and businesshog actually
{
if armour>0
{

if tookHit&&my_health!=maxhealth&&alarm[3]<1&&!exception
{armour-=1;


snd_play(sndHitMetal);
alarm[3]=max(alarm[3],5);//before your armour lowers again}
resetPrevHealth = true;

scrBlankArmour();



}
if armour>maxarmour
armour=maxarmour;
}

}
if alarm[3]>0/*|| lag>0 *//*&&my_health!=maxhealth*/&& !exception
{
	if tookHit
	{
		my_health=prevhealth;
	}
}



if skill_got[22]//Stress Sharp teeth part
{
if tookHit&&alarm[10]<1//I been hit
{
alarm[10]=40;
sharpteeth=prevhealth-my_health-damageReduced;
var multiplier = 2.5;
if race = 25
multiplier*=1.25//Sharp teeth's damage!
if UberCont.opt_gamemode == 24 //SHARP STRESS GAMEMODE
	multiplier *= level;
snd_play_2d(sndSharpTeeth);
with enemy{
	if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{
	//if sprite_index!=spr_hurt{
	snd_play(snd_hurt, hurt_pitch_variation,true)
	Sleep(10)
	my_health -= other.sharpteeth*multiplier//Sharp teeth's damage!
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,6)



	with instance_create(x,y,SharpTeeth)
	owner=other.id;
	//}
	}
}

}
}
var resetPrevHealth = false;
if (tookHit)
{
	//Took a hit?
	if (skill_got[32] && isAlkaline && exception=false)//Alkaline Savila
	{
		var damageTaken = (prevhealth - my_health) + damageReduced;
		//Needs to be healable or lethal
		if (prevhealth < maxhealth || my_health <= 0)
		{
			isAlkaline = false;
			if race == 25//Doctor buff
				damageTaken = ceil(damageTaken*1.25);
			if (skill_got[9]) //Second stomache
				damageTaken *= 2;
			my_health=min(maxhealth,prevhealth+damageTaken);
			resetPrevHealth = true;
			with instance_create(x,y,HealFX)
			{
				depth = other.depth - 1;	
			}
			with instance_create(x,y,SharpTeeth)
				owner=other.id;
			snd_play(sndHealthPickup)
			var pt = instance_create(x,y,PopupText)
			if UberCont.opt_ammoicon
			{
				if my_health = maxhealth
					pt.mytext = "MAX";
				else
					pt.mytext = "+"+string(damageTaken);
				
				pt.sprt = sprHPIconPickup;
			}
			else
			{
				if my_health = maxhealth
					pt.mytext = "MAX HP";
				else
					pt.mytext = "+"+string(damageTaken)+" HP";
			}
			
			alarm[3]=10;//duration of iframes
		}
	}
	if skill_got[12]//euphoria resistance?
	{
		if !instance_exists(GenCont)&&(!instance_exists(myShield) || myShield == -1)&&!instance_exists(LevCont)&&exception=false
		{
			resetPrevHealth = true;
			if race=25
				alarm[3]=30;
			else
				alarm[3]=26;//duration
			myShield = instance_create(x,y,EuphoriaShield);
			with myShield
			{
				owner = other.id;
			}
		}
	}
}

/* */
///strong spirit justasheep
if(my_health<=0 && maxhealth>0)
{

    if skill_got[25]//strong spirit
    {
    if strongspirit==true&&strongspiritused==false
    {
    snd_play(sndStrongSpiritLost);
    my_health=1;
    alarm[1]=20;//invincibility 
    strongspiritused=true;
    strongspirit=false;
    }
    }
    if ultra_got[103] && HumphrySkill>50 && (skill_got[25]=0||strongspiritused=true)//Humphry Protective mustache C
    {
    HumphrySkill=0;
    my_health=1;
    HumphryLoss = true;
    alarm[1]=20;//invincibility 
    }
    
    if(alarm[1]>0)
    {
        my_health=1;
    }

}


///rage
if skill_got[28] == 1
{
	if my_health < prevhealth && exception=false// && alarm[3] < 1//I been hit
		rage = 0;
}


// Audio
audio_listener_position(x, y, depth*10);

exception = false;
if rollIframe > 0
{
	rollIframe --;
	mask_index = mskPlayer;
	if place_meeting(x,y,Wall)
	{
		move_outside_solid(direction+180,8);
		move_contact_solid(direction,max(1,min(maxspeed,speed)))
		if !place_free(x+hspeed,y){hspeed /= 2
		if !place_free(x+hspeed,y) hspeed = 0}
		if !place_free(x,y+vspeed){vspeed /= 2
		if !place_free(x,y+vspeed)vspeed = 0}
		//speed  = 0;
	}
	if rollIframe > 0
	{
		mask_index = mskPickupThroughWall;	
	}
}

if my_health <= 0
{
	if race = 9 and bleed < 150
	{
		if bleed = 0
		{
		maxhealth-=2;
		if maxhealth<0
		{maxhealth=0}

		snd_play(sndChickenLoseHead)
		snd_loop(sndChickenHeadlessLoop)
		repeat(12){
		with instance_create(x,y,BloodStreak){
		motion_add(random(360),2+random(3))
		image_angle = direction}}



		if bskin=2
		{
		spr_idle = sprMutant9CHeadlessIdle
		spr_hurt = sprMutant9CHeadlessHurt
		spr_walk = sprMutant9CHeadlessWalk
		}
		else{
		spr_idle = sprMutant9HeadlessIdle
		spr_hurt = sprMutant9HeadlessHurt
		spr_walk = sprMutant9HeadlessWalk
		}


		with instance_create(x,y,Corpse)
		{
		size = 1
		mask_index = other.mask_index
		motion_add(other.direction,other.speed)
		speed += max(0,-other.my_health/5)
		if other.bskin=2
		sprite_index = mskPickupThroughWall;//invisible basicly
		else if other.bskin=1
		sprite_index = sprMutant9BHeadIdle;
		else
		sprite_index = sprMutant9HeadIdle;
		image_xscale = other.right
		if speed > 16
		speed = 16
		}

		Sleep(60)
		}

		if random(12) < 1{
		with instance_create(x,y-4,BloodStreak){
		motion_add(45+random(90),2+random(3))
		image_angle = direction}}

		if bleed > 100
		{
		with instance_create(x,y,BloodStreak){
		motion_add(random(360),2+random(3))
		image_angle = direction}
		}

		bleed += 1
	}
	else
		instance_destroy();
		
	my_health = 0
}