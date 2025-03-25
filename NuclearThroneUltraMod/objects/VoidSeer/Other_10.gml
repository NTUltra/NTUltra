/// @description Dialogue
if killerSequence
{
	switch (dialogueStep)
	{
		case 1:
			with TextHandler
			{
				useFont = other.cantUnderstand;
				text = "MASSIVE RADIATION DETECTED";
			}
			alarm[2] = 30;
			BackCont.shake += 10;
		break;
		case 2:
			with instance_create(x,y,DarkOverlay)
			{
				alarm[0] = 40;
			}
			with TextHandler
			{
				useFont = other.cantUnderstand;
				text = "INTRUDER";
			}
			alarm[2] = 15;
			BackCont.shake += 10;
		break;
		case 3:
			with TextHandler
			{
				useFont = other.cantUnderstand;
				text = "KILL ON SIGHT";
			}
			alarm[2] = 50;
			BackCont.shake += 10;
		break;
		case 4:
			audio_stop_sound(sndVoidEyeCreeping);
			snd_play(sndVoidCreepEnd);
			with instance_create(x,y,DarkOverlay)
			{
				alarm[0] = 90;
			}
			with TextHandler
				text = "";
			alarm[2] = 50;
			alarm[3] = 1;
			BackCont.shake += 10;
			if race == 12//YUNG CUZ
			{
				cantUnderstand = false;
				dialogueStep = 6;
				alarm[2] = 60;
				with TextHandler
				{
					text = "OH YOU ARE A VENUZIAN?";
					useFont = other.cantUnderstand;
				}
			}
			else if race == 13//Sheep
			{
				cantUnderstand = false;
				dialogueStep = 6;
				alarm[2] = 60;
				with TextHandler
				{
					text = "WAIT ITS JUST A SHEEP...";
					useFont = other.cantUnderstand;
				}
			}
			else if race == 6//YV
			{
				dialogueStep = 18;
				alarm[2] = 15;
			}
		break;
		case 5:
			with instance_create(x,y,DarkOverlay)
			{
				alarm[0] = 90;
			}
			with Player {
				instance_create(x,y,VoidSlash);
				snd_play(sndVoidMegaSlash);
			}
			alarm[2] = 10;
		break;
		case 6:
			with Player {
				visible = false;
				lockout = true;
				instance_create(x,y,VoidSlash);
				snd_play(sndVoidMegaSlash);
				var splatDir = random(360);
				var rpt = 6;
				var angStep = 360 / rpt;
				repeat(rpt)
				{
					with instance_create(x,y,BloodStreak)
					{
						motion_add(splatDir + random_range(12,-12),8 + random(4))
						image_angle = direction
					}
					splatDir += angStep;
				}
				with Player {
					hitBy = sprVoidSeerKill;
				}
				with instance_create(x,y,PlayerInFakeDeath) {
					sprite_index = other.spr_dead;	
				}
			}
			alarm[2] = 120;
		break;
		case 7:
			with TextHandler
			{
				useFont = other.cantUnderstand;
				if other.race != 13 && other.race != 12
					text = "PORTAL ESSENCE DETECTED\nREVERTING DEATH";
				else
					text = "PORTAL ESSENCE DETECTED";
			}
			alarm[2] = 40;
		break;
		case 8:
			with DataRef {
				hitBy = sprVoidSeerKillCancel;
			}
			with TextHandler
			{
				useFont = false;
				text = "";
			}
			alarm[2] = 15;
		break;
		case 9:
			with instance_create(x,y,DarkOverlay)
			{
				alarm[0] = 30;
			}
			with TextHandler
				text = "";
			BackCont.shake += 50;
			snd_play(sndVoidCreepEnd);
			with PlayerInFakeDeath
			{
				instance_destroy();	
			}
			alarm[2] = 10;
		break;
		case 10:
			with TextHandler
				text = "APOLOGIES";
			alarm[2] = 60;
		break;
		case 11:
			with TextHandler
				text = "TOOK A LITTLE TO GET YOUR LANGUAGE";
			alarm[2] = 65;
		break;
		case 12:
			with TextHandler
				text = "I SEE YOU HAVE GONE THROUGH MANY PORTALS";
			alarm[2] = 70;
		break;
		case 13:
			with TextHandler
				text = "WE CAN HELP EACH OTHER";
			alarm[2] = 50;
		break;
		case 14:
			with TextHandler
				text = "";
			alarm[2] = 10;
		break;
		case 15:
			with VoidMaster
			{
				visible = true;
				alarm[0] = 4;
			}
			with VoidBench
			{
				visible = true;	
			}
			with VoidFiend
			{
				visible = true;
				alarm[0] = 4;
			}
			with NoThingUnlocker
			{
				visible = true;
				alarm[0] = 4;
			}
			alarm[2] = 5;
		break;
		case 16:
			with TextHandler
				text = "WE CAN TRADE FOR YOUR PORTAL ESSENCE\nWE NEED THEM TO GET OUT OF HERE";
			UberCont.ctot_void_entered += 1;
			alarm[2] = 90;
		break;
		case 17:
			with TextHandler
				text = "YOU GET PORTAL ESSENCE BY TAKING PORTALS";
			alarm[2] = 70;
		break;
		case 18:
			with TextHandler
			{
				text = "";
				showCanSkip = true;
				canStartTalking = true;
			}
			with VoidExit
			{
				alarm[0] = 4;
			}
			killerSequence = false;
			with VoidFiend
			{
				hasShitToSay = true;	
			}
			with VoidMaster
			{
				hasShitToSay = true;	
			}
			with NoThingUnlocker
			{
				hasShitToSay = true;
			}
			hasShitToSay = true;
		break;
		//YV KILLER SEQUENCE
		case 19:
			alarm[4] = 1;
			snd_play(sndMutant6LowA);
			with instance_create(x,y,StartAreaBuffer)
			{
				alarm[0] = 9;
			}
			BackCont.shake += 5
			with Player {
				other.previousWep = wep;
				other.previousBwep = bwep;
				wep = 39;
				bwep = 0;
			}
			alarm[2] = 15;
		break;
		case 20:
			with StartAreaBuffer
			{
				instance_destroy();	
			}
			with Player {
				var pw = wep;
				wep = 39;
				ammo[0] = max(1,ammo[0]);
				UberCont.mouse__x = other.x;
				UberCont.mouse__y = other.y;
				scrFire();
				wep = other.previousWep;
				bwep = other.previousBwep;
				var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
				BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
				BackCont.shake += 15
				snd_play_2d(sndHeavyRevolver);
				snd_play_2d(sndPopPopUpg);
			}
			with instance_create(x,y,StartAreaBuffer)
			{
				alarm[0] = 11;
			}
			alarm[2] = 12;
		break;
		case 21:
			if sprite_index != spr_dead
			{
				sprite_index = spr_dead;
				image_index = 0;
				image_speed = 0.4;
				snd_play(sndVenuz);
			}
			BackCont.shake += 50;
			with Player {
				wep = other.previousWep;
				bwep = other.previousBwep;
			}
			alarm[2] = 6;
		break;
		case 22:
			//YV Kills the fucker
			with VoidMaster
			{
				visible = true;
				alarm[0] = 4;
				hasShitToSay = true;
			}
			with NoThingUnlocker
			{
				visible = true;
				alarm[0] = 4;
				hasShitToSay = true;
			}
			with VoidBench
			{
				visible = true;	
			}
			with VoidFiend
			{
				visible = true;
				alarm[0] = 4;
				hasShitToSay = true;
			}
			alarm[2] = 5;
		break;
		case 23:
			with TextHandler
			{
				text = "";
				showCanSkip = true;
				canStartTalking = true;
			}
			with VoidExit
			{
				alarm[0] = 4;
			}
			with VoidFiend
			{
				hasShitToSay = true;	
			}
			with VoidMaster
			{
				hasShitToSay = true;	
			}
			with NoThingUnlocker
			{
				hasShitToSay = true;
			}
			killerSequence = false;
			alarm[2] = 5;
		break;
	}
}
else
{
	var al = array_length(textQueue)
	if al > 0 && dialogueStep < al
	{
		with TextHandler
		{
			text = other.textQueue[other.dialogueStep];
		}
		hasShitToSay = false;
		alarm[2] = 5;
	}
	else
	{
		with TextHandler {
			text = "";	
		}
		hasShitToSay = false;
	}
}





/*
	switch (race)
	{
		case 1://Fish
		
		break;
		case 2://Crystal
		
		break;
		case 3://Eyes
		
		break;
		case 4://Melting
		
		break;
		case 5://Plant
		
		break;
		case 6://YV
		
		break;
		case 7://Steroids
		
		break;
		case 8://Robot
		
		break;
		case 9://Chicken
		
		break;
		case 10://Rebel
		
		break;
		case 11://Hunter
		
		break;
		case 12://YC
		
		break;
		case 13://Sheep
		
		break;
		case 14://Panda
		
		break;
		case 15://Atom
		
		break;
		case 16://Viking
		
		break;
		case 17://WEAPONSMITH
		
		break;
		case 18://Angel
		
		break;
		case 19://Skeleton
		
		break;
		case 20://Business Hog
		
		break;
		case 21://Horror
		
		break;
		case 22://Rogue
		
		break;
		case 23://Frog
		
		break;
		case 24://Elementor
		
		break;
		case 25://Doctor
		
		break;
		case 26://Hands
		
		break;
	}
	*/