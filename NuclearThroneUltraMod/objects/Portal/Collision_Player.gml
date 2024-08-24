if sprite_index == sprProtoPortalDormant || sprite_index == sprInvertedPortalDormant || alarm[4] > 0
	exit;

if sprite_index != sprPortalSpawn && sprite_index != sprPinkPortalSpawn && sprite_index != sprPopoPortalStart
{
	if !instance_exists(PlayerInPortal)
	{
		other.visible = false;
		instance_create(x,y,PortalShock);
		if Player.area == 8 && Player.subarea < 2 && ( instance_exists(Sheep))
		{
			Player.banditland=true;
		}
		with instance_create(x,y,PlayerInPortal)
		{
			depth = min(other.depth - 1,Player.depth);
			image_speed = 0.4;
			image_angle = Player.angle;
			right = Player.right;
			sprite_index = Player.spr_hurt;
			with Player
			{
				lockout = true;
				roll = 0;
				jump = 0;
				angle = 0;
				speed = 0;
				if skill_got[32] && isAlkaline
				{
					if race == 25
						scrHeal(3);
					else
						scrHeal(2);
					isAlkaline = false;
					snd_play(sndAlkalineRefund);
					with instance_create(x,y,HealFX)
					{
						depth = other.depth - 1;	
					}
					with instance_create(x,y,SharpTeeth)
						owner=other.id;
				}
				with projectile
				{
					if team != 2
						instance_destroy(id,false);
				}
				with EnemyVenom
				{
					instance_destroy();	
				}
				with BackCont
				{
					alarm[1] = 0;
					alarm[2] = 0;
					alarm[8] = 0;
				}
				with UltraChest
				{
					instance_destroy();
					scrRaddrop(50);
				}
				with PandaSleep
				{
					event_perform(ev_alarm,0);	
				}
				with enemy
				{
					my_health = 0;
					prevhealth = 0;
				}
				with Sheep
				{
					if object_index != PinkSheep
					{
						my_health = 0;
						prevhealth = 0;
					}
				}
				with RadMaggotChest
				{
					my_health = 0;	
				}
				instance_create(x,y,DelayEnemyKill)
				with RadChest
				{
					my_health = 0;	
				}
				with AmmoChest
				{
					event_user(0);
				}
			}
		}
	}
//in portal don't decrease skill
if other.race == 26
{
	with PlayerAlarms
	{
		alarm[6] += 1;
	}
}
if other.race == 15//Atom can no longer teleport
{
	with PlayerAlarms
	{
		alarm[8] += 200;
	}
}
with Ally
{
	my_health = 0;
}
with TinyKraken
{
	my_health = 0;
}
with YungCuzDupe
{
	my_health = 0;
	isAlkaline = false;
	strongspirit = false;
}
other.speed = 0;
if endgame = 100
{
snd_play(sndPortalCloseShort);

endgame = 12;//originally 30


}
}
if inverted{
	with other
	inverted=true//take me to the inverted universe
}


if instance_exists(CrownPed) && !closedTheVault && alarm[1] < 1
{
	//Close up the survival arena
	with Floor
	{
		if sprite_index == sprFloor100D
		{
			instance_destroy(id,false);
			var ar = Player.area;
			Player.area = 100;
			instance_create(x,y,Wall)
			instance_create(x+16,y,Wall);
			instance_create(x+16,y+16,Wall);
			instance_create(x+16,y+16,Wall);
			instance_create(x,y+16,Wall);
			Player.area = ar;
		}
	}
	closedTheVault = true;
}
with other
{
	alarm[3] = max(alarm[3],3);	
}

