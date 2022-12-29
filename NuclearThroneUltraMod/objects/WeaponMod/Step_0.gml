if alarm[0]>20
{

with instance_create(x+random(8)-4,y+random(8)-4,Smoke)
motion_add(random(360),random(3));


    if random(8)<1
    {
    choose(snd_play(sndSpark1),snd_play(sndSpark2));
    BackCont.shake += 4
    with instance_create(x,y,Lightning)
    {image_angle = random(360);
    team = 2;
    ammo = 8+random(8);
    event_perform(ev_alarm,0)
    visible = 0
    with instance_create(x,y,LightningSpawn)
    image_angle = other.image_angle}
    
    }

}

wave+=0.4;

if place_meeting(x,y,Player)
{
	if !active || KeyCont.key_swap[Player.p] = 1
	{
		active = true;
		name="##MODIFY WEAPON#"+modname;
		moddescription = scrWepModDescription(wepmod);
		var hasPowerCraving = Player.skill_got[30];
		if (Player.wepmod1==0)
		{ replaceModNr = 0;}
		else if (Player.wepmod2==0)
		{ replaceModNr = 0;}
		else if (Player.wepmod3==0)
		{ replaceModNr = 0;}
		else if hasPowerCraving && Player.wepmod4==0//power craving
		{
		    replaceModNr = 0;
		}
		else
		{
			if KeyCont.key_swap[Player.p] == 1
				replaceModNr = 0;
				
				replaceModNr ++;
			if replaceModNr > 3 + hasPowerCraving
			{
				replaceModNr = 1;
			}
			switch (replaceModNr)
			{
				case 1:
					name += "#REPLACE MOD 1 "+scrWepModName(Player.wepmod1);
					moddescription = "##"+moddescription;
				break;
				case 2:
					name += "#REPLACE MOD 2 "+scrWepModName(Player.wepmod2);
					moddescription = "##"+moddescription;
				break;
				case 3:
					name += "#REPLACE MOD 3 "+scrWepModName(Player.wepmod3);
					moddescription = "##"+moddescription;
				break;
				case 4:
					name += "#REPLACE MOD 4 "+scrWepModName(Player.wepmod4);
					moddescription = "##"+moddescription;
				break;
			}
		}
	}

	if KeyCont.key_pick[Player.p] = 1 && Player.maxhealth > 0
	{
		KeyCont.key_pick[Player.p] = 2;
		//get your weapon mod 
		if Player.wep !=0 {
			with Player 
			{
				//unlock weapon smith
				scrUnlockCharacter(17,"FOR MODDING A WEAPON")

				///store the data into this object
				with other
				{
					wep = other.wep;
					name = wep_name[wep];//THIS IS WHERE IT GOES WRONG
					type = wep_type[wep]
					curse = other.curse;
					wepmod1 = other.wepmod1;
					wepmod2=other.wepmod2;
					wepmod3=other.wepmod3;
					wepmod4=other.wepmod4;
				}
				if curse == 1
					snd_play(sndCursedReminder);
				snd_play(snd_thrn);

			    Sleep(100);
			    //BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
			    //BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
			    BackCont.shake += 10
    
				if ultra_got[29] && altUltra && bwep != 0//ROBOT EXCLUSIVE TASTE
				{
					maxhealth += 4;
				}
			    if cwep != 0{//robot 3 weps A B C
					scrSwapWeps()// B C A
					cwep=0; // B C x
				}
				else{
					scrSwapWeps()
					bwep = 0
				}
		}
		//show_message("RECEIVED: "+string(wepmod1)+string(wepmod2)+string(wepmod3) );


		alarm[0] = 60;
		if Player.race == 17
			alarm[0] -= 30;
		if Player.skill_got[30]
			alarm[0] -= 30;
		alarm[0] = max(alarm[0],1);
		image_speed=0.4;
		mask_index=mskPickupThroughWall;

		with WeaponMod
		{
			image_speed=0.4;
			mask_index=mskPickupThroughWall;}

			repeat(4)
			instance_create(x,y,Smoke)
		}
	}
}
else
{
	active = false;	
}