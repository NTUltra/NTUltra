if sprite_index == sprProtoPortalDormant || sprite_index == sprInvertedPortalDormant
	exit;
if sprite_index != sprPortalSpawn && sprite_index != sprPinkPortalSpawn
{
if other.visible
{
	other.visible = false;
	with instance_create(x,y,PlayerInPortal)
	{
		depth = min(other.depth - 1,Player.depth);
		image_speed = 0.4;
		image_angle = Player.angle;
		right = Player.right;
		sprite_index = Player.spr_hurt;
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
	PlayerAlarms.alarm[8] += 200;	
}
with Ally
{
	my_health = 0;
}
with YungCuzDupe
{
	my_health = 0;
}
other.speed = 0;
if endgame = 100
{
snd_play(sndPortalCloseShort);

endgame = 12;//originally 30

//ROBOT
if Player.race = 8
{
	    if (Player.race == 8 && (Player.ultra_got[29]==1||Player.ultra_got[30]==1||Player.ultra_got[31]==1||Player.ultra_got[32]==1))
	    {
	    with WepPickup
	    {
		    if curse != 1&&persistent==false
		    {
				if string_copy(name,0,5) = "ULTRA"
				{
					scrRaddrop(12);
					scrUnlockCSkin(8,"FOR EATING AN ULTRA WEAPON",0);
				}
				else if string_copy(name,0,5) = "HYPER" || wep = 131//heavy hyper shit
				{
					scrUnlockBSkin(8,"FOR EATING A HYPER WEAPON",0);
				}
			    else if string_copy(name,0,4) = "GOLD"
			    {repeat(4)
			    {if random(Player.maxhealth) > Player.my_health and Player.crown != 2
			    instance_create(Player.x,Player.y,HPPickup)
			    else
			    instance_create(Player.x,Player.y,AmmoPickup)}
				}
		    with instance_create(Player.x,Player.y,RobotEat)
		    image_xscale = Player.right
    
		    
    
		    if Player.skill_got[5] = 1
		    {
				snd_play(sndRobotEatUpg)
				if Player.my_health < Player.maxhealth
					instance_create(Player.x,Player.y,HPPickup);
				else
					instance_create(Player.x,Player.y,AmmoPickup);
		    }
		    else
				snd_play(sndRobotEat);
			
			if random(Player.maxhealth) > Player.my_health and Player.crown != 2
				instance_create(Player.x,Player.y,HPPickup)
		    else
				instance_create(Player.x,Player.y,AmmoPickup)
			with Player
			{
				var r = 5;
				if skill_got[5]
				{
					r += 4;	
				}
				if ultra_got[29] || ultra_got[30] || ultra_got[31] || ultra_got[32]
					r += 2;
					scrRaddrop(r);
				if ultra_got[31]
				{
					scrRaddrop(14);
				}
				//ROBOT Ultra B Regurgitate
				if ultra_got[30]==1
				{
					if random(100) < 50 + (skill_got[23]*10)//original 43% chance
					{
						snd_play_2d(sndRegurgitate);
					    var dir;
					    dir=random(100);
					    {
					        if dir>77
					        {
								instance_create(x,y,AmmoChest);
					        }
					        else if dir>52
					        {
								instance_create(x,y,HealthChest);
					        }
					        else if dir>27
					        {
								instance_create(x,y,RadChest);
					        }
							else if dir<=0.2//slightly higher chance for weapon chest cus robot luv weps
					        {
								instance_create(x,y,GiantGoldenWeaponChest);
					        }
							else if dir<=1//slightly higher chance for weapon chest cus robot luv weps
					        {
								instance_create(x,y,GoldChest);
					        }
					        else// if dir<=27//slightly higher chance for weapon chest cus robot luv weps
					        {
								instance_create(x,y,WeaponChest);
					        }
							
					    }
					}
				}
			}
		
		    instance_destroy();
		    }
	    }
	    instance_create(Player.x,Player.y,Smoke)
	    }
	} 
    

}
}
if inverted{
with other
inverted=true//take me to the inverted universe
}

if Player.area == 8 && Player.subarea < 2 && ( instance_exists(Sheep)||instance_exists(ExplosiveSheep) )
{
	Player.banditland=true;
}
if instance_exists(CrownPed) && !closedTheVault
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

