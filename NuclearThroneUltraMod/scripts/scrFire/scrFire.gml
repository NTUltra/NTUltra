function scrFire() {
	if !instance_exists(Player)
	exit;
	if wep==0{exit;}

	IDKWID=false;
	can_shoot = 0
	reload = wep_load[wep]
	if (Player.alarm[2]<1)//alarm = Fish Ultra B
	{
		ammo[wep_type[wep]] -= wep_cost[wep]
		rad-=wep_rad[wep]
	}

	if Player.ultra_got[4]//FISH ULTRA D rolling is good
	{
	    reload-=speed*0.25
	    if roll=1
	    {
	    reload*=0.4
	    }
	}

	// ROIDS THRONEBUTT
	//when firing both weapon more chance to giev other weapon ammo
	if Player.ultra_got[25] && wep == bwep
	{
		if random(100)<((wep_cost[wep]/typ_ammo[wep_type[wep]])*0.5)*100
		{
			with instance_create(Player.x,Player.y-8,HealFX)
			{
				sprite_index=sprBloodlust;
			}
			snd_play(sndBloodlustProc);
			var num = 1
			Player.my_health = max(Player.my_health,min(Player.my_health + num,Player.maxhealth));
    
			dir = instance_create(x,y,PopupText)
			dir.mytext = "+"+string(num)+" HP"
			if Player.my_health = Player.maxhealth
			dir.mytext = "MAX HP"
			else if Player.my_health > Player.maxhealth
			dir.mytext = "OVER MAX HP"
		}
	}
	if (Player.race=7 && Player.skill_got[5]=1)
	{
	    if KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2
	    {
	        if random(100)<((wep_cost[bwep]/typ_ammo[wep_type[bwep]])*0.69)*100
			{
    
			    type=round(typ_ammo[wep_type[bwep]]/2);
			    if (ammo[wep_type[bwep]] + type >=typ_amax[wep_type[bwep]])
			    {
					ammo[wep_type[bwep]]=typ_amax[wep_type[bwep]];
			    }
			    else
					ammo[wep_type[bwep]] += type;
    
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(other.type)+" "+string(other.typ_name[wep_type[bwep]])
				if other.type = other.typ_amax[wep_type[bwep]]
					dir.mytext = "MAX "+string(other.typ_name[wep_type[bwep]])
			}

	    }
	    else
	    {
		    if random(100)<((wep_cost[bwep]/typ_ammo[wep_type[bwep]])*0.5)*100
			{
    
			    type=round(typ_ammo[wep_type[bwep]]/2)
			    if (ammo[wep_type[bwep]] + type >=typ_amax[wep_type[bwep]])
			    {
					ammo[wep_type[bwep]]=typ_amax[wep_type[bwep]];
			    }
			    else
					ammo[wep_type[bwep]] += type;
    
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(other.type)+" "+string(other.typ_name[wep_type[bwep]])
				if other.type = other.typ_amax[wep_type[bwep]]
					dir.mytext = "MAX "+string(other.typ_name[wep_type[bwep]])

		    }
	    }

	}

	drawempty = 10

	//IDKWID
	if wep=75
	{
	IDKWID=true;
	    do{wep=round(random(maxwep))
	    }until (wep!=69&&wep!=298)//not Oops gun pls and golden oops gun
	}

	if wep_type[wep] == 5 && !instance_exists(LaserBrainFX)
	{
		instance_create(x,y,LaserBrainFX);	
	}
	
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	switch(wep)
	{
	//REVOLVER
	case 1:

	snd_play_fire(sndPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;

	//TRIPLE MACHINEGUN
	case 2:

	snd_play_fire(sndTripleMachinegun)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6
	break;

	//WRENCH
	case 3:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),Slash)
	{
	dmg = 4
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//MACHINEGUN
	case 4:

	snd_play_fire(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;

	//SHOTGUN
	case 5:

	snd_play_fire(sndShotgun)

	repeat(7)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;


	//CROSSBOW
	case 6:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//NADER
	case 7:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,Grenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;

	//DOUBLE SHOTGUN
	case 8:

	snd_play_fire(sndDoubleShotgun)

	repeat(14)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(50)-25)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 8

	break;

	//MINIGUN
	case 9:

	snd_play_fire(sndMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	motion_add(aimDirection+180,0.6)
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//AUTO SHOTGUN
	case 10:

	snd_play_fire(sndShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(30)-15)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 5

	break;

	//AUTO CROSSBOW
	case 11:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//SUPER CROSSBOW
	case 12:

	snd_play_fire(sndSuperCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+10*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-10*other.accuracy,24)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection+180,1)

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//SHOVEL
	case 13:

	snd_play_fire(sndShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	dmg = 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),Slash)
	{
	dmg = 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),Slash)
	{
	dmg = 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//BAZOOKA
	case 14:

	snd_play_fire(sndRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 10

	break;

	// STICKY NADER
	case 15:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,Grenade)
	{
	sprite_index = sprStickyGrenade
	sticky = 1
	motion_add(aimDirection+(random(6)-3)*other.accuracy,11)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;

	//SMG
	case 16:

	snd_play_fire(sndPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;


	//ASSAULT RIFLE
	case 17:

	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//DISC GUN
	case 18:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,Disc)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;


	//LASER PISTOL
	case 19:


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;


	//LASER RIFLE
	case 20:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(8)-4)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;


	//SLUGGER
	case 21:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;

	//GATLING SLUGGER
	case 22:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;

	//ASSAULT SLUGGER
	case 23:

	with instance_create(x,y,SlugBurst)
	{
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//ENERGY SWORD
	case 24:


	if Player.skill_got[17] = 1
	snd_play_fire(sndEnergySwordUpg)
	else
	snd_play_fire(sndEnergySword)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergySlash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,7)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//SUPER SLUGGER
	case 25:

	snd_play_fire(sndSuperSlugger)

	motion_add(aimDirection+180,3)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Slug)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 8

	break;

	//HYPER RIFLE
	case 26:

	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;



	//MINES
	/*
	if wep = 27
	{
	snd_play_fire(sndGrenade)

	with instance_create(x,y,Mine)
	{
	motion_add(aimDirection+(random(30)-15)*other.accuracy,4)
	team = other.team}

	BackCont.viewx2 += lengthdir_x(5,aimDirection)
	BackCont.viewy2 += lengthdir_y(5,aimDirection)
	wkick = 8
	}*/

	//SCREWDRIVER
	case 27:

	snd_play_fire(sndScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),Shank)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,4)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -8

	break;

	//LASER MINIGUN
	case 28:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(16)-8)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}
	motion_add(aimDirection+180,1)
	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 6

	motion_add(aimDirection+180,0.6)

	break;


	//BLOOD NADER
	case 29:

	snd_play_fire(sndBloodLauncher)

	with instance_create(x,y,BloodGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 4

	break;

	//SPLINTER GUN
	case 30:

	snd_play_fire(sndSplinterGun)

	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	repeat(2)
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;


	//TOXIC BOW
	case 31:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection,22)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//SENTRY GUN
	case 32:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,SentryGun)
	{
	sticky = 0
	motion_add(aimDirection,6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake

	wkick = -10

	break;

	//WAVE GUN
	case 33:

	with instance_create(x,y,WaveBurst)
	{
	creator = other.id
	ammo = 7
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//PLASMA GUN
	case 34:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection+180,1.5)
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;

	//PLASMA CANNON
	case 35:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigUpg)
	else
	snd_play_fire(sndPlasmaBig)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBig)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection+180,6)
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10
	resetSpeed=false;

	break;

	//ENERGY HAMMER
	case 36:


	if Player.skill_got[17] = 1
	snd_play_fire(sndEnergyHammerUpg)
	else
	snd_play_fire(sndEnergyHammer)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*2
	motion_add(aimDirection,1+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,7)
	BackCont.viewx2 += lengthdir_x(32,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -3

	break;

	//JACKHAMMER
	case 37:

	with instance_create(x,y,SawBurst)
	{
	creator = other.id
	ammo = 12
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//FLAK CANNON
	case 38:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,FlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,11+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;


	//GOLDEN REVOLVER
	case 39:

	snd_play_fire(sndPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break

	//GOLDEN WRENCH
	case 40:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	sprite_index=sprGoldenSlash
	dmg = 4
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(16,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -6

	break;


	//GOLDEN MACHINEGUN
	case 41:

	snd_play_fire(sndGoldMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//GOLDEN SHOTGUN
	case 42:

	snd_play_fire(sndShotgun)

	repeat(8)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;



	//GOLDEN CROSSBOW
	case 43:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team
	sprite_index=sprGoldBolt}

	BackCont.viewx2 += lengthdir_x(44,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(44,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;

	//GOLDEN NADER
	case 44:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,Grenade)
	{
	sprite_index = sprGoldGrenade
	sticky = 0
	motion_add(aimDirection,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;

	//GOLDEN LASER PISTOL
	case 45:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection
	team = other.team
	event_perform(ev_alarm,0)}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//CHICKEN SWORD
	case 46:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	ang = aimDirection
	move_contact_solid(ang,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),Slash)
	{
	ang = other.ang
	dmg = 3
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(ang,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	speed = +speed*0.5;
	BackCont.viewx2 += lengthdir_x(8,ang)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,ang)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -6

	break;


	//NUKE LAUNCHER
	case 47:

	snd_play_fire(sndNukeFire)

	with instance_create(x,y,Nuke)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10

	break;

	//ION CANNON
	case 48:


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,IonBurst)
	{
	creator = other.id
	ammo = 20
	time = 1
	team = other.team
	alarm[0] = 25
	}

	BackCont.shake += 6
	wkick = 3

	break;

	//QUADRUPLE MACHINEGUN
	case 49:

	snd_play_fire(sndQuadMachinegun)

	repeat(4)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,4+random(3))
	}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+18*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-18*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;

	//FLAMETHROWER
	case 50:

	if !instance_exists(FlameSound)
	instance_create(x,y,FlameSound)
	with instance_create(x,y,FlameBurst)
	{
	creator = other.id
	ammo = 10
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//DRAGON
	case 51:

	if !instance_exists(DragonSound)
	instance_create(x,y,DragonSound)
	with instance_create(x,y,DragonBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//FLARE GUN
	case 52:

	snd_play_fire(sndFlare)

	with instance_create(x,y,Flare)
	{
	sticky = 0
	motion_add(aimDirection+(random(14)-7)*other.accuracy,9)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//ENERGY SCREWDRIVER
	case 53:

	if Player.skill_got[17] = 1
	snd_play_fire(sndEnergyScrewdriverUpg)
	else
	snd_play_fire(sndEnergyScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),EnergyShank)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,3)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -8

	break;


	//HYPER LAUNCHER
	case 54:

	snd_play_fire(sndHyperLauncher)

	with instance_create(x,y,HyperGrenade)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 8

	break;

	//LASER CANNON
	case 55:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)

	with instance_create(x,y,LaserCannon)
	{
	creator = other.id
	ammo = 5+(Player.skill_got[17]+other.betterlaserbrain)*2
	time = 1
	team = other.team
	alarm[0] = 15
	}

	break;


	//RUSTY REVOLVER
	case 56:

	snd_play_fire(sndRustyRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection,15.6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//LIGHTNING PISTOL
	case 57:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLightning3)
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(20)-10)*other.accuracy
	team = other.team
	ammo = 15
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//LIGHTNING RIFLE
	case 58:

	if Player.skill_got[17] = 1
	snd_play_fire(choose(sndLightning2,sndLightning3))
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(6)-3)*other.accuracy
	team = other.team
	ammo = 30
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	//LIGHTNING SHOTGUN
	case 59:

	if Player.skill_got[17] = 1
	snd_play_fire(sndThunder)
	else
	snd_play_fire(choose(sndLightning2,sndLightning3))

	repeat(8)
	{
	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(60)-30)*other.accuracy
	team = other.team
	ammo = 9+random(3)
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}}


	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 5

	break;

	//BLOOD SHOTGUN
	case 60:

	snd_play_fire(sndBloodLauncher)
	repeat(2){
	with instance_create(x,y,BloodGrenade)
	{
	visible=false;
	sticky = 0
	motion_add(aimDirection+(random(30)-15)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team
	with instance_create(x,y,BloodStreak){
	image_angle = other.direction}
	alarm[0]=3;
	//instance_destroy();
	}
	}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5

	break;

	//BLOOD PISTOL
	case 61:

	snd_play_fire(sndBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;

	//POPGUN
	case 62:

	snd_play_fire(sndPopgun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;


	//BLACKHOLE GENERATOR
	case 63:

	snd_play_fire(sndLightningPlasma2)
	repeat(2){
	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(60)-30)*other.accuracy
	team = other.team
	ammo = 7
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	}

	with instance_create(x,y,Implosion)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;


	//POP RIFLE
	case 64:

	with instance_create(x,y,Burst2)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//POP HYPER RIFLE
	case 65:

	with instance_create(x,y,Burst2)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//QUADRUPLE SHOTGUN
	case 66:

	snd_play_fire(sndDoubleShotgun)
	snd_play_fire(sndShotgun);

	repeat(28)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(50)-30)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 20
	wkick = 12

	break;


	//SWORD GUN
	case 67:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;


	//AUTO GRENADE LAUNCHER
	case 68:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,Grenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(10)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;


	//OOPS GUN
	case 69:

	snd_play_fire(sndPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	//kill player (This is actually really bad design but I don't care it only happens one in a milion so its funny)
	Player.my_health=0;

	BackCont.viewx2 += lengthdir_x(800,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(800,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 500
	wkick = 40
	exit;
	break;


	//MORPH-O-RAY
	case 70:

	if !instance_exists(MorphSound)
	instance_create(x,y,MorphSound)
	with instance_create(x,y,Ray)
	{
	creator = other.id
	ammo = 5
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	explosive=2;
	}

	break;


	//SUPER BAZOOKA
	case 71:

	snd_play_fire(sndSuperBazooka)

	motion_add(aimDirection+180,4)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Rocket)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//GATLING BAZOOKA
	case 72:

	snd_play_fire(sndRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 10

	break;


	//EXPLOSIVE MORPH-O-RAY
	case 73:

	if !instance_exists(MorphSound)
	instance_create(x,y,MorphSound)
	with instance_create(x,y,Ray)
	{
	creator = other.id
	ammo = 5
	time = 3
	team = other.team
	event_perform(ev_alarm,0)
	explosive=3;
	}

	break;


	//TRIPLE POP GUN
	case 74:

	snd_play_fire(sndTripleMachinegun)

	repeat(2)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;

	// wep 75 the IDKWID code is at the start and end of this script

	//PLASMA Rifle
	case 76:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection+180,3)
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5
	resetSpeed=false;

	break;


	//PLASMA Minigun
	case 77:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaMinigun)
	else
	snd_play_fire(sndPlasmaMinigunUpg)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection+180,3)
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;


	//HYPER SLUGGER
	case 78:

	snd_play_fire(sndHyperSlugger)

	with instance_create(x,y,HyperSlug)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 8

	break;


	//SUPER PLASMA CANNON
	case 79:

	snd_play_fire(sndSuperPlasmaCannon)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection+180,6)
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10
	resetSpeed=false;

	break;


	//HUNTER SNIPER
	case 80:

	snd_play_fire(sndSniperFire)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+4,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-4,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 3

	break;

	//SUPER SWORD GUN
	case 81:

	snd_play_fire(sndHeavyCrossbow)

	motion_add(aimDirection+180,16)

	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SwordBullet)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;

	//MEGA LASER PISTOL
	case 82:

	snd_play_fire(sndMegaLaser)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MegaLaser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	motion_add(aimDirection+180,0.6)
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;


	//BLOOD RIFLE
	case 83:

	snd_play_fire(sndBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2.2
	wkick = 2

	break;


	//TRIPLE BLOOD RIFLE
	case 84:

	snd_play_fire(sndMachinegun)
	snd_play_fire(sndBloodPistol)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5

	break;

	//ERASER
	case 85:

	snd_play_fire(sndEraser)
	with instance_create(x,y,EraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;


	//SUPER ERASER
	case 86:

	motion_add(aimDirection+180,16)

	snd_play_fire(sndEraser)
	with instance_create(x,y,EraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,EraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,EraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,EraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,EraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//DOUBLE MINIGUN
	case 87:

	snd_play_fire(sndDoubleMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))
	repeat(2){
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	}
	motion_add(aimDirection+180,1.2)
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	//SPLINTER PISTOL
	case 88:

	snd_play_fire(sndSplinterPistol)

	repeat(2)//4 splinters
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick -= 2

	break;


	//DIRECTOR SLUGGER
	case 89:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,DirectorSlug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 8

	break;


	//ASSAULT PISTOL
	case 90:

	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//ASSAULT SHOTGUN
	case 91:

	with instance_create(x,y,ShotgunBurst)
	{
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//BEAM SHOTGUN
	case 92:

	//snd_play_fire(sndEraser)
	with instance_create(x,y,BeamShotgunBurst)
	{
	creator = other.id
	ammo = 9
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//BOUNCER SMG
	case 93:

	snd_play_fire(sndBouncerFire)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+(random(34)-17)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;


	//BOUNCER SHOTGUN
	case 94:

	snd_play_fire(sndBouncerShotgun)

	motion_add(aimDirection+180,2)

	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection-30*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+30*other.accuracy+(random(8)-4)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 6

	break;


	//BOUNCER ASSAULT RIFLE
	case 95:

	with instance_create(x,y,BouncerBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER BOUNCER RIFLE
	case 96:

	with instance_create(x,y,BouncerBurst)
	{
		pspeed += 3;
	creator = other.id
	ammo = 6
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//BOUNCER FLAK CANNON
	case 97:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,BouncerFlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,5.1)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;


	//MORPH-O-PISTOL
	case 98:

	if !instance_exists(MorphSound)
	instance_create(x,y,MorphSound)
	with instance_create(x,y,Ray)
	{
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	explosive=2;
	}

	break;


	//SUPER FLAK CANNON
	case 99:

	snd_play_fire(sndSuperFlakCannon)

	with instance_create(x,y,SuperFlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,11+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;


	//SLEDGEHAMMER
	case 100:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	sprite_index=sprHeavySlash;
	dmg = 16//shovel is 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;


	//LIGHTNING SMG
	case 101:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLightning3)
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(20)-15)*other.accuracy
	team = other.team
	ammo = 14
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3

	break;


	//FROST PISTOL
	case 102:

	snd_play_fire(sndFrostShot1)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;


	//FROST MACHINEGUN
	case 103:

	snd_play_fire(sndFrostShot2)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//HEAVY REVOLVER
	case 104:

	snd_play_fire(sndHeavyRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;


	//HEAVY MACHINEGUN
	case 105:

	snd_play_fire(sndHeavyMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//HEAVY ASSAULT RIFLE
	case 106:

	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//SHORTGUN
	case 107:

	snd_play_fire(sndSawedOffShotgun)

	repeat(22)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(80)-40)*other.accuracy,6+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 7

	break;


	//DEAD GLOVE
	case 108:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	ang = aimDirection
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),Slash)
	{
		ang = other.ang
		dmg = 8
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(ang,2+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(3+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(ang,42)
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),Slash)
			{
				ang = other.ang
				dmg = 8
				longarms = 0
				if instance_exists(Player)
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(ang,2+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	x += lengthdir_x(1,ang+180)
	y += lengthdir_y(1,ang+180)
	xprevious = x;
	yprevious = y;
	alarm[3]=4;//imunity
	//wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(8,ang)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,ang)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;


	//BLOOD GLOVE
	case 109:

	snd_play_fire(sndBloodHammer)

	instance_create(x,y,Dust)

	ang = aimDirection
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),BloodSlash)
	{
		ang = other.ang
		dmg = 4
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(ang,2+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(3+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(ang,42)
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),BloodSlash)
			{
				ang = other.ang
				dmg = 4
				longarms = 0
				if instance_exists(Player)
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(ang,2+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	x += lengthdir_x(1,ang+180)
	y += lengthdir_y(1,ang+180)
	xprevious = x;
	yprevious = y;

	alarm[3]=4;//imunity
	BackCont.viewx2 += lengthdir_x(8,ang)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,ang)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;


	//MINI FLAME CANNON
	case 110:

	snd_play_fire(sndFiretrap)
	snd_play_fire(sndFlakExplode);

	with instance_create(x,y,MiniFlameCannonBall)
	{
	image_angle=random(360);
	motion_add(aimDirection+(random(8)-4)*other.accuracy,3)
	team = other.team}

	motion_add(aimDirection+180,2.5)
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;


	//FLAME CANNON
	case 111:

	snd_play_fire(sndFiretrap)
	snd_play_fire(sndSuperFlakExplode);

	with instance_create(x,y,FlameCannonBall)
	{
	image_angle=random(360);
	motion_add(aimDirection+(random(8)-4)*other.accuracy,3)
	team = other.team}

	motion_add(aimDirection+180,2)
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 8

	break;


	//INFINITY PISTOL
	case 112:

	snd_play_fire(sndPistol)

	//with instance_create(x,y,Shell)
	//motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3

	break;


	//INFINITY MACHINEGUN
	case 113:

	snd_play_fire(sndMachinegun)
	//with instance_create(x,y,Shell)
	//motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 3

	break;


	//ULTRA REVOLVER
	case 114:

	snd_play_fire(sndUltraPistol)

	repeat(2){
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	}

	with instance_create(x,y,Bullet4)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3


	break;


	//ULTRA SHOTGUN
	case 115:


	snd_play_fire(sndUltraShotgun)

	repeat(9)
	{
	with instance_create(x,y,Bullet5)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,14+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 7

	break;


	//ULTRA CROSSBOW
	case 116:


	snd_play_fire(sndUltraCrossbow)

	with instance_create(x,y,UltraBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(41,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(41,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//ULTRA LASERPISTOL
	case 117:


	if Player.skill_got[17] = 1
	snd_play_fire(sndUltraLaserUpg)
	else
	snd_play_fire(sndUltraLaser)

	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)+7*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)+14*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)-7*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)-14*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 9


	break;


	//ULTRA SHOVEL
	case 118:


	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	dmg = 30;
	sprite_index=sprUltraSlash;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),Slash)
	{
	dmg = 30
	sprite_index=sprUltraSlash;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),Slash)
	{
	dmg = 30
	sprite_index=sprUltraSlash;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(26,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(26,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -4

	break;


	//AUTO FLAK CANNON
	case 119:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,FlakBullet)
	{
	motion_add(aimDirection+(random(20)-10)*other.accuracy,11+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;


	//ULTRA LIGHTNING RIFLE
	case 120:

	if Player.skill_got[17] = 1
	snd_play_fire(choose(sndLightning2,sndLightning3))
	else
	snd_play_fire(sndLightning1)

	snd_play_fire(sndUltraLaser);


	with instance_create(x,y,UltraLightning)
	{image_angle = aimDirection+(random(6)-3)*other.accuracy
	team = other.team
	ammo = 60//60
	///if Player.ultra_got[59]=1 
	///ammo+=4;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}


	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 10

	break;


	//ULTRA FLAMETHROWER
	case 121:

	if !instance_exists(DragonSound)
	instance_create(x,y,DragonSound)
	with instance_create(x,y,UltraFlameBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//FLARE SHOTGUN
	case 122:

	snd_play_fire(sndFlare)

	repeat(4){
	with instance_create(x,y,Flare)
	{
	sticky = 1
	motion_add(aimDirection+(random(60)-30)*other.accuracy,9)
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 7

	break;


	//FROST GLOVE
	case 123:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	ang = aimDirection
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),FrostSlash)
	{
		ang = other.ang
		dmg = 12
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(ang,2+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(3+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(ang,42)
			instance_create(x,y,Dust)
			with instance_create(x,y,IceFlame)
			{
				motion_add(other.ang,4+random(1))
				image_angle = direction
				team = other.team;
			}
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),FrostSlash)
			{
				ang = other.ang
				dmg = 12
				longarms = 0
				if instance_exists(Player)
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(ang,2+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	x += lengthdir_x(1,ang+180)
	y += lengthdir_y(1,ang+180)
	xprevious = x;
	yprevious = y;

	alarm[3]=4;//imunity
	BackCont.viewx2 += lengthdir_x(8,ang)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,ang)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;


	//LIGHTNING HAMMER
	case 124:

	if Player.skill_got[17] = 1
		snd_play_fire(sndLaserSwordUpg);
	
	snd_play_fire(sndLightningHammer);

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
	{
	if Player.skill_got[17] = 1
	{
	dmg=15+(other.betterlaserbrain*2);
	}
	else
	dmg = 10//shovel is 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -4

	break;


	//LIGHTNING SHOVEL
	case 125:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
	{
	if Player.skill_got[17] = 1
	dmg=17+(other.betterlaserbrain*2);
	else
	dmg = 12//shovel is 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),LightningSlash)
	{
	if Player.skill_got[17] = 1
	dmg=17+(other.betterlaserbrain*2);
	else
	dmg = 12//shovel is 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),LightningSlash)
	{
	if Player.skill_got[17] = 1
	dmg=17+(other.betterlaserbrain*2);
	else
	dmg = 12//shovel is 8
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;


	//ENERGY JACKHAMMER
	case 126:

	with instance_create(x,y,EnergyJackhammerBurst)
	{
	creator = other.id
	ammo = 4
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//ENERGY SWORD GUN
	case 127:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigUpg)
	else
	snd_play_fire(sndPlasmaBig)

	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;


	//SUPER SWORD GUN
	case 128:

	snd_play_fire(sndLightningPlasma2)

	motion_add(aimDirection+180,16)

	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergySwordBullet)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(62,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(62,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 10

	break;


	//TOXICTHROWER
	case 129:

	if !instance_exists(ToxicSound)
	instance_create(x,y,ToxicSound)
	with instance_create(x,y,ToxicBurst)
	{
	creator = other.id
	ammo = 9
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//TOXIC DRAGON
	case 130:

	if !instance_exists(ToxicDragonSound)
	instance_create(x,y,ToxicDragonSound)
	with instance_create(x,y,ToxicDragonBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HEAVY HYPER RIFLE
	case 131:

	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER BLOOD LAUNCHER
	case 132:

	snd_play_fire(sndBloodLauncher)
	snd_play_fire(sndHyperLauncher);

	with instance_create(x,y,HyperBloodGrenade)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 8

	break;


	//AUTO SPLINTER GUN
	case 133:

	snd_play_fire(sndSplinterGun)

	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	repeat(2)
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(24)-12)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(14)-7)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;


	//DOUBLE MACHINEGUN
	case 134:

	snd_play_fire(sndMachinegun)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+8*other.accuracy+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection-8*other.accuracy+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;


	//LOLLIPOP
	case 135:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BigSlash)
	{
	dmg = 26//shovel is 8 sledge = 16
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;


	//SMART GUN
	case 136:

	snd_play_fire(sndSmartgun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{
	motion_add(aimDirection+(random(12)-6)*other.accuracy,16)

	var target;
	target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

	if instance_exists(target)
	{
	        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
	        {
	            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
	            {
					direction=point_direction(x,y,target.x,target.y)+(random(12)-6)*other.accuracy;
					motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	            }
	       }
		   else
		   {
				motion_add(aimDirection+(random(12)-6)*other.accuracy,16)   
		   }
       
	}
	else
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,16)	
	}

	image_angle = direction
	team = other.team

	}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//SMART MINIGUN
	case 137:

	snd_play_fire(sndMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{


	var target;
	target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

	if instance_exists(target)
	{
	        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
	        {
	            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
	            {
	            direction=point_direction(x,y,target.x,target.y)+(random(20)-10)*other.accuracy;
				motion_add(direction,16)
	            }
	       }
		   else
		   {
				motion_add(aimDirection+(random(20)-10)*other.accuracy,16)
		   }
	}
	else
	{
		motion_add(aimDirection+(random(20)-10)*other.accuracy,16)	
	}

	image_angle = direction
	team = other.team

	}

	motion_add(aimDirection+180,0.6)
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//MEGA LASER RIFLE
	case 138:

	snd_play_fire(sndMegaLaser)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MegaLaser)
	{image_angle = aimDirection+(random(8)-4)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	motion_add(aimDirection+180,0.6)
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;


	//SPLINTER CROSSBOW
	case 139:

	snd_play_fire(sndCrossbow)
	snd_play_fire(sndSplinterGun)

	with instance_create(x+lengthdir_x(2,aimDirection),y+lengthdir_y(2,aimDirection),Bolt)
	{motion_add(aimDirection,25)
	image_angle = direction
	team = other.team}

	repeat(2)
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//HYPER PLASMA CANNON
	case 140:

	snd_play_fire(sndLightningPlasma2)
	snd_play_fire(sndHyperLauncher);

	with instance_create(x,y,HyperPlasmaCannon)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//BULLET SHOTGUN
	case 141:

	snd_play_fire(sndShotgun)

	repeat(7)
	{
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;


	//BLOOD BULLET SHOTGUN
	case 142:

	snd_play_fire(sndShotgun)
	snd_play_fire(sndBloodHammer);

	repeat(7)
	{
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//LINE GRENADE
	case 143:

	snd_play_fire(sndHyperLauncher)

	with instance_create(x,y,LineGrenade)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	//HYPER LIGHTNING LAUNCHER
	case 144:

	snd_play_fire(sndHyperLightning)
	snd_play_fire(sndHyperLauncher)

	with instance_create(x,y,HyperLightning)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//LINE OF FIRE
	case 145:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineFire)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//LINE OF TOXIC
	case 146:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineToxic)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;


	//FROST SHOTGUN
	case 147:

	snd_play_fire(sndShotgun)

	repeat(9)
	{
	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,14+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 8

	break;


	//PISTOLE
	case 148:

	with instance_create(x,y,PistoleBurst)
	{
	creator = other.id
	ammo = 2
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER BURST SHOTGUN
	case 149:

	with instance_create(x,y,ShotgunBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//HYPER BURST SLUGGER
	case 150:

	with instance_create(x,y,SlugBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//INFINTY SHOTGUN
	case 151:

	snd_play_fire(sndShotgun)

	repeat(7)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(36)-18)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 7

	break;


	//INFINITY CROSSBOW
	case 152:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,25)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//INCINERATOR
	case 153:

	snd_play_fire(sndIncinerator)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;


	//FLAME POP GUN
	case 154:

	snd_play_fire(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;


	//MINI INCINERATOR
	case 155:

	snd_play_fire(sndIncinerator)

	repeat(2)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//FLAME SHOTGUN
	case 156:

	snd_play_fire(sndFireShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 6

	break;


	//DOUBLE FLAME SHOTGUN
	case 157:

	snd_play_fire(sndDoubleFireShotgun)

	repeat(14)
	{
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(50)-30)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 7

	break;


	//AUTO FLAME SHOTGUN
	case 158:

	snd_play_fire(sndFireShotgun)

	repeat(5)
	{
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(30)-15)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 5

	break;


	//QUADRUPLE FLAME SHOTGUN
	case 159:

	snd_play_fire(sndDoubleFireShotgun)
	snd_play_fire(sndFireShotgun)

	repeat(28)
	{
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(50)-30)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(31,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(31,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 21
	wkick = 12

	break;


	//FLAME ERASER
	case 160:

	snd_play_fire(sndEraser)
	snd_play_fire(sndFireShotgun);
	with instance_create(x,y,FlameEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//SUPER FLAME ERASER
	case 161:

	motion_add(aimDirection+180,16)

	snd_play_fire(sndEraser)
	snd_play_fire(sndDoubleFireShotgun);
	with instance_create(x,y,FlameEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,FlameEraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,FlameEraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,FlameEraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	with instance_create(x,y,FlameEraserBurst)
	{
	mox=x+lengthdir_x(64*other.accuracy,aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy)
	moy=y+lengthdir_y(64*other.accuracy,aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy)
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 9

	break;


	//MEGA INCINERATOR
	case 162:

	snd_play_fire(sndIncinerator)

	repeat(4)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,4+random(3))
	}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+18*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection-18*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 8

	break;


	//QUADRUPLE POP GUN
	case 163:

	snd_play_fire(sndQuadMachinegun)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,4+random(3))
	}

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-6*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+18*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-18*other.accuracy+(random(6)-3)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 7

	break;


	//LINE OF BLOOD
	case 164:

	snd_play_fire(sndBloodLauncher)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineBlood)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	//EXPLOSIVE BOW
	case 165:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,ExplosiveBolt)
	{motion_add(aimDirection,22)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//SLASH SHOTGUN
	case 166:

	with instance_create(x,y,SlashShotgunPrep)
	{
	snd_play_fire(sndSlugger)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10+random(2));
	image_angle=direction;
	rate=1//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 14
	totalammo = ammo;
	time = 1
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;


	//SPIRAL SLASH SHOTGUN
	case 167:

	with instance_create(x,y,SlashShotgunPrep)
	{
	snd_play_fire(sndSlugger)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10+random(2));
	image_angle=direction;
	rate=4//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 45
	totalammo = ammo;
	time = 1
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;


	//SLASH ERASER
	case 168:

	with instance_create(x,y,SlashEraserPrep)
	{
	snd_play_fire(sndEraser)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10+random(2));
	image_angle=direction;
	rate=1//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 7
	totalammo = ammo;
	time = 2
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 9

	break;


	//SPIRAL SLASH SHOTGUN
	case 169:

	with instance_create(x,y,SlashShotgunPrep)
	{
	snd_play_fire(sndSlugger)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10+random(2));
	image_angle=direction;
	rate=4//for extra speed more bullets per step
	Direction=aimDirection;
	creator = other.id
	ammo = 140
	totalammo = ammo;
	time = 1
	team = other.team
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;


	//DIRECTOR SHOTGUN
	case 170:

	snd_play_fire(sndShotgun)

	repeat(7)
	{
	with instance_create(x,y,Bullet7)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,9+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;


	//DOUBLE DIRECTOR SHOTGUN
	case 171:

	snd_play_fire(sndDoubleShotgun)

	repeat(14)
	{
	with instance_create(x,y,Bullet7)
	{motion_add(aimDirection+(random(50)-30)*other.accuracy,9+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 17
	wkick = 8

	break;


	//QUADRUPLE DIRECTOR SHOTGUN
	case 172:

	snd_play_fire(sndDoubleShotgun)
	snd_play_fire(sndShotgun)

	repeat(28)
	{
	with instance_create(x,y,Bullet7)
	{motion_add(aimDirection+(random(50)-30)*other.accuracy,9+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 21
	wkick = 12

	break;


	//DIRECTOR RIFLE
	case 173:

	with instance_create(x,y,DirectorBurst)
	{
	creator = other.id
	ammo = 4
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//FLAME DIRECTOR SHOTGUN
	case 174:

	snd_play_fire(sndFireShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet9)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,8+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 6

	break;


	//DOUBLE FLAME DIRECTOR SHOTGUN
	case 175:

	snd_play_fire(sndDoubleFireShotgun)

	repeat(14)
	{
	with instance_create(x,y,Bullet9)
	{motion_add(aimDirection+(random(50)-30)*other.accuracy,8+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 7

	break;


	//QUADRUPLE FLAME DIRECTOR SHOTGUN
	case 176:

	snd_play_fire(sndFlakCannon)
	snd_play_fire(sndDoubleFireShotgun);

	repeat(28)
	{
	with instance_create(x,y,Bullet9)
	{motion_add(aimDirection+(random(50)-30)*other.accuracy,8+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,2)

	BackCont.viewx2 += lengthdir_x(31,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(31,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 21
	wkick = 12

	break;


	//TIMETHROWER
	case 177:


	//if !instance_exists(FlameSound)
	//instance_create(x,y,FlameSound)

	if !instance_exists(TimeThrowerBurst){
	with instance_create(x,y,TimeThrowerBurst)
	{
	creator = other.id
	//ammo = 9
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}}

	break;


	//HEAVY ASSAULT PISTOL
	case 178:

	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//AUTO FLARE GUN
	case 179:

	snd_play_fire(sndFlare)

	with instance_create(x,y,Flare)
	{
	sticky = 0
	motion_add(aimDirection+(random(24)-12)*other.accuracy,9)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//AUTO FLARE SHOTGUN
	case 180:

	snd_play_fire(sndFlare)

	repeat(4){
	with instance_create(x,y,Flare)
	{
	sticky = 1
	motion_add(aimDirection+(random(70)-35)*other.accuracy,9)
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;


	//CAR THROWER
	case 181:

	snd_play_fire(sndSnowBotThrow);
	with instance_create(x,y,CarThrow)
	{
	team = other.team
	motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	}

	BackCont.viewx2 += lengthdir_x(-7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(-7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = -7

	break;


	//DIRECTOR ERASER
	case 182:

	snd_play_fire(sndEraser)
	with instance_create(x,y,DirectorEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;


	//FLAME DIRECTOR ERASER
	case 183:

	snd_play_fire(sndEraser)
	snd_play_fire(sndFireShotgun);
	with instance_create(x,y,FlameDirectorEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6
	break;


	//SEEKER PISTOL
	case 184:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;


	//SEEKER SHOTGUN
	case 185:

	snd_play_fire(sndSeekerShotgun)


	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)-15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)+15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)-30*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)+30*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)-45*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(12)-6)+45*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick -= 7

	break;

	//AUTO SEEKER PISTOL
	case 186:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(30)-15)-15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(30)-15)+15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;


	//ASSAULT SEEKER SHOTGUN
	case 187:

	with instance_create(x,y,SeekerShotgunBurst)
	{
	creator = other.id
	ammo = 3
	time = 7
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//GRENADE PISTOL
	case 188:

	with instance_create(x,y,SmallGrenadeBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//SPLINTER SEEKER
	case 189:

	snd_play_fire(sndBigSplinter)

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	repeat(2)
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//SEEKER CROSSBOW
	case 190:

	snd_play_fire(sndSeekerShotgun)
	snd_play_fire(sndCrossbow);

	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,25)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//SUPER AUTO CROSSBOW
	case 191:

	snd_play_fire(sndSuperCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+6*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-6*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+12*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-12*other.accuracy,24)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection+180,1)

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 9

	break;


	//TIME BOM
	case 192:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,TimeBomb)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;


	//ULTRA BLADE GUN
	case 193:


	snd_play_fire(sndDiscgun)

	with instance_create(x,y,UltraBlade)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8


	break;


	default:
	//we run a secondary script because this one is lagging
	scrFire2();
	break;
	}//end of huge switch

	if (IDKWID)
	{
	wep=75;
	}

	if race=11//HUNTER Projectile speed
	{
	with projectile{
	if team=2
	speed*=1.18;
	    }
	}

	if Player.ultra_got[56]==1//PANDA Meditate rapid hands melee firerate
	{
		if scrMeleeWeapons()
	    {
			reload*=0.6;//0.6;
	    }
	}

	if Player.ultra_got[34]==1//Chicken Ultra B ninja
	{
	//some melee exceptions
	if scrMeleeWeapons()
	    {
	    with projectile{
	    if team=2&& typ=0 && ProjectileCanBeMoved(){//if team is Player
	    //image_speed/=2;}//double the damage
	    dmg*=1.5;
	    BackCont.shake += 5}}
	    }
	}
	//YV ultra C 
	//if firing shotgun add bullet from same cost as shotgun

	    if Player.ultra_got[23]//ULTRA C
	    {
		    if wep_type[wep] == 2 // You are holding a shotgun
		    {
			    reload *=0.4;//shotgun speed
			    //ammo[1] += wep_cost[wep]//bullet magic
    
			    if (ammo[1] + wep_cost[wep] >=typ_amax[1])//bullet magic
			    {
					ammo[1]=typ_amax[1]//typ_amax[wep_type[bwep]];
			    }
			    else
					ammo[1] += wep_cost[wep];
		    }
	    }
    
    
	    if Player.ultra_got[96]//ULTRA D ELEMENTOR THUNDER BOMB
	    {
    
	    if scrLightningWeapons(wep) // You are holding a lightning weapon
	    {
    
	    if (ammo[4] + round(wep_cost[wep]*0.6) >=typ_amax[4])//get explo ammo
	    {
	    ammo[4]=typ_amax[4];
	    }
	    else
	    ammo[4] += round(wep_cost[wep]*0.6);
    
	    }
	    if scrKrakenWeapons(wep) // You are holding a kraken weapon
	    {
    
	    if (ammo[5] +round(wep_cost[wep]*0.6) >=typ_amax[5])//get energy ammo
	    {
	    ammo[5]=typ_amax[5];
	    }
	    else
	    ammo[5] += round(wep_cost[wep]*0.6);
    
	    }
    
	    }


	//Atom utlra electron

	if Player.ultra_got[59]=1
	{
	with Lightning
	ammo+=4;
	//with UltraLightning we just do this in the actual fire thing
	//ammo+=4;

	if wep_type[wep]==5//energy wep
	{
	if wep_cost[wep]>1//if ammo cost is more than 1
	ammo[wep_type[wep]]+=1;//return one ammo
	}
	} 

	if Player.ultra_got[57]=1
	{

	if wep_type[wep]==4//splosive wep
	{

	if wep_cost[wep]>1//if ammo cost is more than 1
	ammo[wep_type[wep]]+=1;//return one ammo

	}
	} 



	    if Player.ultra_got[67] == 1
	    {
		    //Ultra c one with the gun
		    if !scrMeleeWeapons()
		    {
		        if wep_cost[wep]>1//if ammo cost is more than 1
		        ammo[wep_type[wep]]+=1;//return one ammo
		    }
		    else//thats a melee weapon!
		    {
				reload*=2
		    }
	    }
    




	if Player.curse//super minor curse weapon fire rate increase
	{
		reload -=0.03;
	}

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
	*/
	if object_index = Player {
		with projectile
		{
			if team=other.team//player projectile
			{
				Mod1=other.wepmod1;
				Mod2=other.wepmod2;
				Mod3=other.wepmod3;
				if !hadSpeedApplied && speed > 0
				{
					hadSpeedApplied = true;
					var speedBoost = 1.11;
					var spda = 2.4;
					var speedAdd = 0;
					if Player.skill_got[30] == 1
					{
						Mod4=other.wepmod4;
						speedBoost = 1.15;
						spda = 3.9;
					}
				    //Projectile speed mod
				    if Mod1==11
				    {
						speed*=speedBoost
						speedAdd += spda;
				    }
				    if Mod2==11
				    {
						speed*=speedBoost
						speedAdd += spda;
				    }
				    if Mod3==11
				    {
						speed*=speedBoost
						speedAdd += spda;
				    }
				    if Mod4==11
				    {
						speed*=speedBoost
						speedAdd += spda;
				    }
					speed += speedAdd;
					speed = min(speed,40);
				}
			}
		}   

	firedthislevel=true;

	fired=true;

	}
	var reloadBoost = 0.82;
	if Player.skill_got[30] == 1
		reloadBoost = 0.74;
	
	if wepmod1==12
		reload*=reloadBoost
	
	if wepmod2==12
	reload*=reloadBoost

	if wepmod3==12
	reload*=reloadBoost

	if wepmod4==12
	reload*=reloadBoost
	if Player.ultra_got[80] == 1//business hog gold digger
	{
		if scrCheckGold(wep_name[wep])//string_copy(wep_name[wep],0,4) = "GOLD"&&loops<1
		reload*=0.4;
	}


	if wep!=1 && wep!=39 && wep!=56//revolver and golden revolver and rusty revolver
	onlyusemerevolver=false;

	if race=26
	{

	with projectile
	{
	Humphry=true;
	HumphryNr=other.HumphryShotCount;
	}
	HumphryShotCount++;
	}

	if Player.ultra_got[88]//ROGUE ULTRA POPO ULTRA D
	{
		if wep_rad[wep]>0
			rad+=wep_rad[wep]*0.4;
	}
	if Player.crown=18//DISCO FEVER!
	{
	draw_set_blend_mode(bm_add);
	__background_set_colour( (make_color_hsv(random(255),255,255)) )
	if random(400)<20
	{

	with enemy
	{

	if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{
	spr_idle=choose(sprSheepIdleA,sprSheepIdleB)
	spr_walk=sprSheepWalk;
	spr_hurt=sprSheepHurt;
	spr_dead=sprSheepDead;
	}

	}

	}
	}



}
