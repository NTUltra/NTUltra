/// @description Dialogue
switch (dialogueStep)
{
	case 1:
		if killerSequence
		{
			with TextHandler
			{
				useFont = true;
				text = "QASOID12&(*95408mnMLFoi&FN";
			}
			alarm[2] = 30;
			BackCont.shake += 10;
		}
	break;
	case 2:
		if killerSequence
		{
			with instance_create(x,y,DarkOverlay)
			{
				alarm[0] = 40;
			}
			with TextHandler
			{
				useFont = true;
				text = "9348DKOMNSG0U23@";
			}
			alarm[2] = 15;
			BackCont.shake += 10;
		}
	break;
	case 3:
		if killerSequence
		{
			with TextHandler
			{
				useFont = true;
				text = "45654opjiOIFDJSF134-0D";
			}
			alarm[2] = 50;
			BackCont.shake += 10;
		}
	break;
	case 4:
		if killerSequence
		{
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
		}
	break;
	case 5:
		if killerSequence
		{
			with instance_create(x,y,DarkOverlay)
			{
				alarm[0] = 90;
			}
			with Player {
				instance_create(x,y,VoidSlash);
				snd_play(sndVoidMegaSlash);
			}
			alarm[2] = 10;
		}
	break;
	case 6:
		if killerSequence
		{
			with Player {
				visible = false;
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
		}
	break;
	case 7:
		if killerSequence
		{
			with TextHandler
			{
				useFont = true;
				text = "DIlOSFJ1344@12(%$sdFBH";
			}
			alarm[2] = 40;
		}
	break;
	case 8:
		if killerSequence
		{
			with DataRef {
				hitBy = sprVoidSeerKillCancel;
			}
			with TextHandler
			{
				useFont = false;
				text = "";
			}
			alarm[2] = 15;
		}
	break;
	case 9:
		if killerSequence
		{
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
		}
	break;
	case 10:
		if killerSequence
		{
			with TextHandler
				text = "APOLOGIES";
			alarm[2] = 60;
		}
	break;
	case 11:
		if killerSequence
		{
			with TextHandler
				text = "TOOK A LITTLE TO GET YOUR LANGUAGE";
			alarm[2] = 65;
		}
	break;
	case 12:
		if killerSequence
		{
			with TextHandler
				text = "I SEE YOU HAVE GONE THROUGH MANY PORTALS";
			alarm[2] = 70;
		}
	break;
	case 13:
		if killerSequence
		{
			with TextHandler
				text = "WE CAN HELP EACH OTHER";
			alarm[2] = 50;
		}
	break;
	case 14:
		if killerSequence
		{
			with TextHandler
				text = "";
			alarm[2] = 10;
		}
	break;
	case 15:
		if killerSequence
		{
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
			alarm[2] = 5;
		}
	break;
	case 16:
		if killerSequence
		{
			with TextHandler
				text = "WE CAN TRADE FOR YOUR PORTAL ESSENCE\nWE NEED THEM TO GET OUT OF HERE";
			UberCont.ctot_void_entered += 1;
			alarm[2] = 90;
		}
	break;
	case 17:
		if killerSequence
		{
			with TextHandler
				text = "YOU GET PORTAL ESSENCE BY TAKING PORTALS";
			alarm[2] = 70;
		}
	break;
	case 18:
		if killerSequence
		{
			with TextHandler
				text = "";
			with VoidExit
			{
				alarm[0] = 4;
			}
		}
	break;
	//var race = Player.race;
	//var raceName = Player.race_name[Player.race];
}