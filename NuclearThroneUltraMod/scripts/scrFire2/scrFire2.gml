function scrFire2(hasTailNow) {
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	//Now if a marker exists aim at that
	switch(wep)
	{//here we go again!

	//KRAKEN GUN
	case 194:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);

	snd_play_fire(choose(sndWater1,sndWater2) );


	with instance_create(x,y,Tentacle)
	{image_angle = aimDirection+(random(30)-15)*other.accuracy
	creator=other.id;
	team = other.team
	ammo = 18
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(6){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;


	//BIG KRAKEN GUN
	case 195:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);
	snd_play_fire(choose(sndWater1,sndWater2) );
	repeat(3){
	with instance_create(x,y,Tentacle)
	{image_angle = aimDirection+(random(40)-20)*other.accuracy
	creator=other.id;
	team = other.team
	ammo = 19
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	}}

	repeat(8){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 7

	break;


	//KRAKEN LAUNCHER
	case 196:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);
	snd_play_fire(choose(sndWater1,sndWater2) );

	repeat(6){
	with instance_create(x,y,Tentacle)
	{
	creator=other.id;
	image_angle = aimDirection+(random(50)-25)*other.accuracy
	team = other.team
	ammo = 24
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	}}

	repeat(12){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 10

	break;


	//DOUBLE SUPER PLASMA CANNON
	case 197:

	Sleep(30);

	snd_play_fire(sndSuperPlasmaCannon)
	snd_play_fire(sndSuperPlasmaCannon)

	with instance_create(x,y,PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)+12*other.accuracy,2)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)-12*other.accuracy,2)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,48);
		motion_add(aimDirection+180,12)
	}
	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 30
	wkick = 20
	resetSpeed=false;

	break;


	//MORPH HAMMER
	case 198:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),MorphSlash)
	{
	if Player.skill_got[17] = 1//laserbrain
	{
	dmg=17+(other.betterlaserbrain*2)
	}
	else
	dmg = 16//rench4//sledge16
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team
	snd_hit=sndSledgeHit;}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,4)
		scrMoveContactSolid(aimDirection,4)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;


	//ULTRA SEEKER PISTOL
	case 199:

	snd_play_fire(sndSeekerShotgun)

	with instance_create(x,y,UltraSeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraSeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,UltraSeekerBolt)
	{motion_add(aimDirection+(random(20)-20)-20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraSeekerBolt)
	{motion_add(aimDirection+(random(20)-20)+20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick -= 6


	break;


	//PANDA STICK
	case 200:

	snd_play_fire(sndWrench)

	instance_create(x,y,Dust)
	if !skill_got[2]
		scrMoveContactSolid(aimDirection,3)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		image_xscale -= 0.15;
		image_yscale -= 0.15;
		dmg = 4
		longarms = 0
	
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(6,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -5

	break;


	//MICRO PLASMA
	case 201:

	snd_play(sndMicroLauncher,0.03,true);
	with instance_create(x,y,MicroPlasma)
	{
		direction = aimDirection+(random(6)-3)*other.accuracy;
		image_angle = direction;
		team = other.team
		scrGiveProjectileStats();
		event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;


	//KRAKEN TAIL
	case 202:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);

	snd_play_fire(choose(sndWater1,sndWater2) );


	with instance_create(x,y,Tentacle)
	{image_angle = aimDirection+180+(random(16)-8)*other.accuracy
	creator=other.id;
	team = other.team
	ammo = 14
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(4){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+180+random(60)-30,2+random(4) );
	    }}

	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -5

	break;


	//FLAME WAVE GUN
	case 203:
	snd_play_fire(sndFireShotgun);
	snd_play_fire(sndWaveGun)

	with instance_create(x,y,FlameWaveBurst)
	{
	creator = other.id
	ammo = 8
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//SPLINTER SEEKER CROSSBOW
	case 204:

	snd_play_fire(sndBigSplinter)

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
	
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 20;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 10;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//PLASMA SHOTGUN
	case 205:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	var ang = -30;
	repeat(5)
	{
	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(ang*other.accuracy),5)//40-20
	image_angle = direction
	team = other.team
	}
	ang += 15;
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,4);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;


	//SMALL MISSILE LAUNCHER
	case 206:

	snd_play_fire(sndRocket)


	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(20)-10)-10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(20)-10)+10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,2);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//MISSILE LAUNCHER
	case 207:

	snd_play_fire(sndRocket)


	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(12)-6)-15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(12)-6)+15*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(12)-6)-30*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(12)-6)+30*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(12)-6)-45*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Missile)
	{motion_add(aimDirection+(random(12)-6)+45*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,5);
		motion_add(aimDirection+180,4)
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 9

	break;


	//MINI PLASMA SHOTGUN
	case 208:

	snd_play_fire(sndPlasma)
	
	var ang = -40;
	repeat(5)
	{
	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MiniPlasmaBall)
	{motion_add(aimDirection+(ang*other.accuracy),5)//40-20
		originalDirection = direction;
	image_angle = direction
	team = other.team
	}
	ang += 20;
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;


	//MINI PLASMA MINIGUN
	case 209:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaMinigun)
	else
	snd_play_fire(sndPlasmaMinigunUpg)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MiniPlasmaBall)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,2)
		originalDirection = direction;
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.5);
		motion_add(aimDirection+180,0.8)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 4
	resetSpeed=false;

	break;


	//SUPER MISSILE LAUNCHER
	case 210:

	with instance_create(x,y,MissileBurst)
	{
	creator = other.id
	ammo = 3
	time = 7
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//MINI PLASMA RIFLE
	case 211:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaMinigun)
	else
	snd_play_fire(sndPlasmaMinigunUpg)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MiniPlasmaBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,2)
		originalDirection = direction;
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 4

	break;


	//SUPER ION CANNON
	case 212:

	snd_play_fire(sndLaserCannonCharge);
	with instance_create(x,y,SuperIonBurst)
	{
	creator = other.id
	ammo = 40
	maxTime = ammo;
	time = 1
	team = other.team
	alarm[0] = 15
	}

	BackCont.shake += 12
	wkick = 4

	break;


	//SUPER NUKE LAUNCHER
	case 213:

	with instance_create(x,y,NukeBurst)
	{
	creator = other.id
	ammo = 4
	time = 7
	team = other.team
	event_perform(ev_alarm,0);


	}

	break;


	//VIKING GREAT AXE
	case 214:

	snd_play_fire(sndVikingGreatAxe)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),AxeSlash)
	{
		shouldBleed = true;
		bleedAngle = aimDirection - (30 * sign(other.wepangle));
	sprite_index=sprAxeSlash;
	mask_index = mskBigAxeSlash;
	dmg = 16//25//shovel is 8 sledge = 16
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team
	snd_hit=sndSledgeHit;}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,5)
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;


	//VIKING AXE
	case 215:

	snd_play_fire(sndVikingAxe)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),AxeSlash)
	{
		shouldBleed = true;
		bleedAngle = aimDirection - (30 * sign(other.wepangle));
	dmg = 8//shovel is 8
	image_xscale *= 0.8;
	image_yscale *= 0.8;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
	motion_add(aimDirection,3)
	scrMoveContactSolid(aimDirection,4)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -4

	break;


	//GRENADE SHOTGUN
	case 216:

	snd_play_fire(sndGrenadeShotgun)
	with instance_create(x,y,SmallShotgunGrenadeBurst)
	{
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	/*
	repeat(5)
	{
	with instance_create(x,y,SmallGrenade)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,9+random(3))//speed=10
	image_angle = direction
	team = other.team
	alarm[0] = 14//shorter fuse original 40 regular naddes 60
	}
	}*/

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 7

	break;


	//AUTO GRENADE SHOTGUN
	case 217:

	snd_play_fire(sndGrenadeShotgun)
	with instance_create(x,y,SmallShotgunGrenadeBurst)
	{
		randomAccuracy = 30;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	/*
	repeat(4)
	{
	with instance_create(x,y,SmallGrenade)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,9+random(3))//speed=10
	image_angle = direction
	team = other.team
	alarm[0] = 14//shorter fuse original 40 regular naddes 60
	}
	}*/

	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 6

	break;


	//GRENADE RIFLE
	case 218:

	snd_play_fire(sndGrenadeRifle);

	with instance_create(x,y,SmallGrenadeBurst)
	{
	creator = other.id
	ammo = 3
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//GRENADE HYPER RIFLE
	case 219:

	snd_play_fire(sndGrenadeRifle);

	with instance_create(x,y,SmallGrenadeBurst)
	{
	creator = other.id
	ammo = 8
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//GHETTO BLASTER
	case 220:

	snd_play_fire(sndGhettoBlast)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),GhettoBlast)
	{
	motion_add(aimDirection+(random(12)-6)*other.accuracy,6+random(4))

	dmg = 12//4 wrench

	if Player.skill_got[17] = 1//laserbrain
	dmg = 17

	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection + 180,6)
		scrMoveContactSolid(aimDirection + 180,10)
	}
	BackCont.viewx2 += lengthdir_x(5,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = -8

	break;


	//DOOM LAUNCHER
	case 221:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,DoomNadeCluster)
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


	//LASER SWORD
	case 222:


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergySlash)
	{
	dmg=23;//25 for normal
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}



	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,5)
		scrMoveContactSolid(aimDirection,3)
	}
	BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;


	//BULLET SWORD
	case 223:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	dmg = 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}


	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 4
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}


	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,5)
		scrMoveContactSolid(aimDirection,3)
	}
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;


	//GOLDEN CAR THROWER
	case 224:

	snd_play_fire(sndSnowBotThrow);
	with instance_create(x,y,CarThrow)
	{
		maxhealth = 30;//20 original
		spr_idle = sprGoldenCarIdle
		spr_hurt = sprGoldenCarHurt
		//spr_dead = sprScorchmark
		team = other.team
		motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	}

	BackCont.viewx2 += lengthdir_x(-8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(-8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = -8

	break;


	//GOLDEN PLASMA GUN
	case 225:

	if Player.skill_got[17] = 1
	snd_play_fire(sndGoldPlasmaUpg)
	else
	snd_play_fire(sndGoldPlasma);

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.7);
		motion_add(aimDirection+180,0.8)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;


	//GOLDEN SLUGGER
	case 226:

	snd_play_fire(sndGoldSlugger)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;


	//GOLDEN ASSAULT RIFLE
	case 227:

	BackCont.shake += 2
	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	with instance_create(x,y,Burst)
	{
		snd = sndGoldMachinegun;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}

	break;


	//GOLDEN SPLINTER GUN
	case 228:

	snd_play_fire(sndGoldSplinterGun)
	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 15;
		creator = other.id
		ammo = 5
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick -= 4

	break;


	//GOLDEN BAZOOKA
	case 229:

	snd_play_fire(sndGoldRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team
	snd = sndGoldRocketFly;
	sprite_index=sprGoldenRocket;}

	BackCont.viewx2 += lengthdir_x(31,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(31,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 11

	break;


	//GOLDEN SCREWDRIVER
	case 230:

	snd_play_fire(sndGoldScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),Shank)
	{
		sprite_index = sprGoldenShank;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,2.5)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -9

	break;


	//GUITAR
	case 231:

	snd_play_fire(sndGuitar)

	instance_create(x,y,Dust)
	if !skill_got[2]	
		scrMoveContactSolid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		sprite_index = sprHeavySlash;
	snd_wallhit=sndGuitarHitWall;
	snd_hit=sndGuitarHit;
	dmg = 28
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -8

	break;


	//HEAVY CROSSBOW
	case 232:

	snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(45,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(45,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;

	//BLADE GUN
	case 233:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,Blade)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;

	//HEAVY AUTO CROSSBOW
	case 234:

	snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+random(18)-9*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;

	//SUPER HEAVY CROSSBOW
	case 235:

	snd_play_fire(sndSuperCrossbow)
	//snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+10*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-10*other.accuracy,18)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,14);
		motion_add(aimDirection+180,8)
	}

	BackCont.viewx2 += lengthdir_x(80,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(80,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 10

	break;


	//SUPER HEAVY AUTO CROSSBOW
	case 236:

	snd_play_fire(sndSuperCrossbow)
	snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+6*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-6*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+12*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-12*other.accuracy,18)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,9);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(70,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(70,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 9

	break;


	//SPIRAL SLASH DIRECTOR SHOTGUN
	case 237:

	with instance_create(x,y,SlashDirectorShotgunPrep)
	{
	snd_play_fire(sndSlugger)
	motion_add(aimDirection+(random(6)-3)*other.accuracy,15);
	image_angle=direction;
	rate=10//for extra speed more bullets per step
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

	//SPLIT BLADE GUN
	case 238:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,SplitBlade)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 5

	break;



	//ROCKET GLOVE
	case 239:

	snd_play_fire(sndRocket);
	snd_loop(sndFlamerLoop);
	with instance_create(x,y,RocketGloveBurst)
	{
	creator = other.id
	ammo += 23//equal to reload time?
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}


	instance_create(x,y,Dust)
	repeat(4)
	instance_create(x,y,Smoke);
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),RocketSlash)
	{
	image_speed=0;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12

	break;


	//SWARM GUN
	case 240:

	with instance_create(x,y,SwarmBurst)
	{
	creator = other.id
	ammo = 6
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//INFINITY SLUGGER
	case 241:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 9

	break;


	//INFINITY LASER PISTOL
	case 242:


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection//+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;


	//SWARM SHOTGUN
	case 243:

	snd_play_fire(sndSwarm);
	repeat(3)
	{
		with instance_create(x,y,SwarmBurst)
		{
		creator = other.id
		ammo = 4
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
		}
	}
	

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;


	//ULTRA SUPER LASERPISTOL V2
	case 244:

	snd_play_fire(sndMegaLaser);
	snd_play_fire(sndUltraLaserUpg)
	snd_play_fire(sndThunder);

	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	defaultPierce += 32;
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)+7*other.accuracy
	team = other.team
	defaultPierce += 32;
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)+14*other.accuracy
	team = other.team
	defaultPierce += 32;
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)-7*other.accuracy
	team = other.team
	defaultPierce += 32;
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)-14*other.accuracy
	team = other.team
	defaultPierce += 32;
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,32);
		motion_add(aimDirection+180,12)
	}
	BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 18
	wkick = 12

	break;

	//LIGHTNING MINIGUN
	case 245:

	if Player.skill_got[17] = 1
	snd_play_fire(choose(sndLightning2,sndLightning3))
	else
	snd_play_fire(sndLightning1)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.25);
		motion_add(aimDirection+180,0.25)
	}
	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(26)-13)*other.accuracy
		iframeskip -= 0.03;
	team = other.team
	ammo = 26
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;

	//SUPER SPLIT BLADE GUN
	case 246:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,SuperSplitBlade)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 7

	break;

	//BOMB LAUNCHER
	case 247:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,SplitGrenade)
	{
	sticky = 1
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;

	//ULTRA POPGUN
	case 248:

	snd_play_fire(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet5)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//HEAVY SLUGGER
	case 249:

	snd_play_fire(sndHeavySlugger)

	with instance_create(x,y,HeavySlug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,14)//16
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 18
	wkick = 10

	break;


	//AUTO EXPLOSIVE CROSSBOW
	case 250:

	snd_play_fire(sndCrossbow)
	altFire = !altFire;
	if altFire
	{
		wep_type[250] = 3;
	}
	else
	{
		wep_type[250] = 4;
	}
	with instance_create(x,y,ExplosiveBolt)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,22)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(36,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(36,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;


	//YOYO GUN
	case 251:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,7)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;

	//SUPER YOYO GUN
	case 252:

	snd_play_fire(sndDiscgun)


	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5),6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+10+(random(10)-5)*other.accuracy,7)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection-10+(random(10)-5)*other.accuracy,7)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+20+(random(10)-5)*other.accuracy,7)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection-20+(random(10)-5)*other.accuracy,7)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,5);
		motion_add(aimDirection+180,1)
	}



	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;

	//SHANK GUN
	case 253:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,ShankBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;

	//SUPER SHANK GUN
	case 254:

	snd_play_fire(sndHeavyCrossbow)
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,16)
	}

	with instance_create(x,y,ShankBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ShankBullet)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ShankBullet)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ShankBullet)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ShankBullet)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(50,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(50,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 8

	break;

	//ENERGY SHANK GUN
	case 255:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigUpg)
	else
	snd_play_fire(sndPlasmaBig)

	with instance_create(x,y,EnergyShankBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;


	//SUPER ENERGY SHANK GUN
	case 256:

	snd_play_fire(sndLightningPlasma2)
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,15);
		motion_add(aimDirection+180,16)
	}

	with instance_create(x,y,EnergyShankBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergyShankBullet)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergyShankBullet)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergyShankBullet)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,EnergyShankBullet)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(55,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(55,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 10

	break;

	//LIGHTNING CROSSBOW
	case 257:

	snd_play_fire(sndCrossbow)
	altFire = !altFire;
	if altFire
	{
		wep_type[257] = 3;
	}
	else
	{
		wep_type[257] = 5;
	}
	with instance_create(x,y,LightningBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//SHOTGUN RIFLE
	case 258:

	if wep_type[258]==2
	{
		snd_play_fire(sndShotgun)
		with instance_create(x,y,DoubleShotgunBurst)
		{
		creator = other.id
		ammo = 3
		time = 2
		amountOfProjectiles = 3;
		team = other.team
		accuracy = 20;
		event_perform(ev_alarm,0)
		}
		/*
		repeat(9)
		{
			with instance_create(x,y,Bullet2)
			{motion_add(aimDirection+(random(24)-12)*other.accuracy,14+random(6))
			image_angle = direction
			team = other.team}
		}*/

		BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = 6

		wep_type[258]= 1;
		wep_sprt[258] = sprShotgunRifle2
		wep_cost[258] = 6;
	}
	else
	{
		with instance_create(x,y,Burst)
		{
			creator = other.id
			ammo = 6
			time = 2
			team = other.team
			event_perform(ev_alarm,0) 
		}
		wep_type[258]=2;
		wep_sprt[258] = sprShotgunRifle1
		wep_cost[258] = 2;
	}

	break;

	//BULLET POPPER
	case 259:


	if wep_sprt[259] == sprBulletPopper1
	{
	with instance_create(x,y,Burst2)
	{
	creator = other.id
	ammo = 2
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	wep_sprt[259] = sprBulletPopper2;
	}
	else
	{
		/*
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
	*/
	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 2
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	wep_sprt[259] = sprBulletPopper1;
	}

	break;

	//HYPER HEAVY SLUGGER
	case 260:

	snd_play_fire(sndHyperSlugger)
	snd_play_fire(sndHeavySlugger)

	with instance_create(x,y,HyperHeavySlug)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;

	//HYPER MACHINEGUN
	case 261:

	//snd_play_fire(sndHeavyRevolver)
	snd_play_fire(sndHyperSlugger);

	with instance_create(x,y,HyperSniper)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 8

	break;

	//SPIRAL YOYO GUN
	case 262:
	
	with instance_create(x,y,SpiralYoyoBurst)
	{
		creator = other.id
		ammo = 6
		accuracy = other.accuracy;
		angle = aimDirection;
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	
	break;

	//ELECTRIC GUITAR
	case 263:

	snd_play_fire(sndGuitar)

	instance_create(x,y,Dust)
	if !skill_got[2]
		scrMoveContactSolid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
	{
	snd_wallhit=sndGuitarHitWall;
	snd_hit=sndGuitarHit;
	dmg = 24//26
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -8

	break;

	//BROKEN STER GUN
	case 264:

	snd_play_fire(sndRocket)

	with instance_create(x,y,SterNuke)
	{motion_add(aimDirection+(random(4)-2)+10*other.accuracy,2)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,SterNuke)
	{motion_add(aimDirection+(random(4)-2)-10*other.accuracy,2)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 40
	wkick = 20

	break;

	//HEAVY MINIGUN
	case 265:

	snd_play_fire(sndMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.6);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;

	//HEAVY DOUBLE MINIGUN
	case 266:

	snd_play_fire(sndDoubleMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))
	repeat(2){
	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1.2)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 9

	break;

	//FAT REVOLVER
	case 267:

	snd_play_fire(sndHeavyRevolver)


	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	repeat(4)
	{
	with instance_create(x,y,Smoke)
	motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(3))
	}

	with instance_create(x,y,FatBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;

	//FAT MACHINEGUN
	case 268:

	snd_play_fire(sndHeavyRevolver)


	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	repeat(4)
	{
	with instance_create(x,y,Smoke)
	motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(3))
	}


	with instance_create(x,y,FatBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//BOUNCER LASER PISTOL
	case 269:


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	laserhit=3;
	sprite_index=sprBouncingLaser;
	image_yscale -= 0.14
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;


	//BOUNCER LASER RIFLE
	case 270:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(8)-4)*other.accuracy
	team = other.team
	laserhit=4;
	sprite_index=sprBouncingLaser;
	image_yscale -= 0.14
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;

	//FAT SMG
	case 271:

	snd_play_fire(sndHeavyRevolver)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,FatBullet)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	repeat(4)
	{
	with instance_create(x,y,Smoke)
	motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(3))
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;

	//GHOST BLADE
	case 272:

	snd_play_fire(choose(sndSword1,sndSword2))

	snd_play_fire(sndBloodLauncher)

	instance_create(x,y,Smoke)
	instance_create(x,y,Dust)

	repeat(4+irandom(3))
	{
	with instance_create(x,y,GhostEffect)
	motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(4))
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20+32,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20+32,aimDirection),GhostSlash)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,6+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),GhostSlash)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,8)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = -7

	break;

	//GYRO BURSTER
	case 273:

	snd_play_fire(sndGrenade)

	snd_play_fire(sndGyroBurst)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,GyroBurst)
	{
		motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
		team = other.team
		if Player.skill_got[42]
		{
			alarm[0] = floor(alarm[0]*Player.betterTail - 0.2);
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 4

	break;

	//INFUSER
	case 274:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,InfuseBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//GHOST SHOVEL
	case 275:

	snd_play_fire(sndShovel)
	snd_play_fire(sndBloodLauncher)

	instance_create(x,y,Smoke)
	instance_create(x,y,Dust)

	repeat(3+irandom(3))
	{
	with instance_create(x,y,GhostEffect)
	motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(4))
	}


	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*19,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*19,aimDirection),GhostSlash)
	{
		dmg = 13;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	repeat(3+irandom(3))
	{
	with instance_create(x,y,GhostEffect)
	motion_add(aimDirection+70+(random(30)-15)*other.accuracy,3+random(4))
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14,aimDirection+50*Player.accuracy),GhostSlash)
	{
		dmg = 11;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	repeat(3+irandom(3))
	{
	with instance_create(x,y,GhostEffect)
	motion_add(aimDirection-70+(random(30)-15)*other.accuracy,3+random(4))
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14,aimDirection-50*Player.accuracy),GhostSlash)
	{
		dmg = 11;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	//longer shovelnessness
	var l = 32;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*19+l,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*19+l,aimDirection),GhostSlash)
	{
		dmg = 13;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14+l,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14+l,aimDirection+50*Player.accuracy),GhostSlash)
	{
		dmg = 11;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14+l,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14+l,aimDirection-50*Player.accuracy),GhostSlash)
	{
		dmg = 11;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,8)
	}
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//GOLDEN FLAMETHROWER
	case 276:

	if !instance_exists(FlameSound)
	instance_create(x,y,FlameSound)
	with instance_create(x,y,GoldenFlameBurst)
	{
	creator = other.id
	ammo = 10
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//GOLDEN SLEDGEHAMMER
	case 277:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	sprite_index=sprGoldenHeavySlash
	dmg = 24//sledge is 16
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,5)
		scrMoveContactSolid(aimDirection,2)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -4

	break;


	//GOLDEN SHOVEL
	case 278:

	snd_play_fire(sndShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	sprite_index=sprGoldenSlash;
	dmg = 10
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),Slash)
	{
	sprite_index=sprGoldenSlash;
	dmg = 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Slash)
	{
	sprite_index=sprGoldenSlash;
	dmg = 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,5)
	}
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -4

	break;

	//GOLDEN EXPLOSIVE CROSSBOW
	case 279:

	snd_play_fire(sndCrossbow)
	altFire = !altFire;
	if altFire
	{
		wep_type[279] = 3;
	}
	else
	{
		wep_type[279] = 4;
	}
	with instance_create(x,y,ExplosiveBolt)
	{motion_add(aimDirection,22)
	image_angle = direction
	sprite_index = sprGoldenExplosiveBolt
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;

	//GOLDEN ASSAULT PISTOL
	case 280:

	with instance_create(x,y,Burst)
	{
		snd = sndGoldMachinegun;
		creator = other.id
		ammo = 2
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;


	//GOLDEN SHORTGUN
	case 281:

	snd_play_fire(sndSawedOffShotgun)
	with instance_create(x,y,ShortgunBurst)
	{
		projectileSpeed += 0.25;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2

	break;

	//GOLDEN BULLET SHOTGUN
	case 282:

	snd_play_fire(sndShotgun)

	repeat(7)
	{
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(36)-18)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 7

	break;


	//GOLDEN PISTOLE
	case 283:
	with instance_create(x,y,PistoleBurst)
	{
	creator = other.id
	ammo = 2
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//GOLDEN POPGUN
	case 284:

	snd_play_fire(sndPopgun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,16+random(3))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;

	//GOLDEN POP RIFLE
	case 285:

	with instance_create(x,y,Burst2)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//GOLDEN GLOVE
	case 286:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)
	var currentX = x;
	var currentY = y;
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		sprite_index=sprGoldenSlash
		dmg = 9
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(4+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(aimDirection,42)
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
			{
				sprite_index=sprGoldenSlash
				dmg = 8
				longarms = 0
				
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	if !skill_got[2]
	{
	scrForcePosition60fps();
	xprevious = x;
	yprevious = y;
	}
	else
	{
		x = currentX;
		y = currentY;
	}
	
	alarm[3]=max(4,alarm[3]);//imunity
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -12

	break;


	//GOLDEN FLARE GUN
	case 287:

	snd_play_fire(sndFlare)

	with instance_create(x,y,Flare)
	{
	sticky = 0
	motion_add(aimDirection+(random(14)-7)*other.accuracy,11)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 5

	break;

	//GOLDEN SMG
	case 288:

	snd_play_fire(sndPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;

	//ULTRA SLUGGER
	case 289:

	snd_play_fire(sndSuperSlugger)

	with instance_create(x,y,UltraSlug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 9

	break;

	//GOLDEN BOUNCER SMG
	case 290:

	snd_play_fire(sndBouncerFire)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+(random(34)-17)*other.accuracy,5.9)//5.1
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3.2
	wkick = 2

	break;

	//ENERGY GLOVE
	case 291:
	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)

	instance_create(x,y,Dust)
	var currentX = x;
	var currentY = y;
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
	{
		longarms = 0
		
			longarms = (Player.skill_got[13]+other.bettermelee)*2
		motion_add(aimDirection,1+longarms)
		image_angle = aimDirection
		team = other.team
	}
	repeat(3+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(aimDirection,42)
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
			{
			longarms = 0
			
				longarms = (Player.skill_got[13]+other.bettermelee)*2
			motion_add(aimDirection,1+longarms)
			image_angle = aimDirection
			team = other.team
			}
		}
	}
	if !skill_got[2]
	{
	scrForcePosition60fps();
	xprevious = x;
	yprevious = y;
	}
	else
	{
		x = currentX;
		y = currentY;
	}

	alarm[3]=max(4,alarm[3]);//imunity
	//wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;

	//SEEKER WAVE GUN
	case 292:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SeekerWaveBurst)
	{
	creator = other.id
	ammo = 20
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}


	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;

	//DIRECTOR SUPER SLUGGER
	case 293:

	snd_play_fire(sndSuperSlugger)
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,4);
		motion_add(aimDirection+180,3)
	}

	with instance_create(x,y,DirectorSlug)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,DirectorSlug)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,DirectorSlug)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,DirectorSlug)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,DirectorSlug)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 8

	break;


	//CHARGE SHOTGUN
	case 294:

	with instance_create(x,y,ChargeShotgun)
	{
		maxcharge = 20;//maxrate
		type = 2;
		cost = 1;
		creator = other.id
		chargetime = 3;
		costtime = 8
		team = other.team
		if Player.skill_got[42]
		{
			chargetime = 1;
			rate += 2;
			costtime *= Player.betterTail;
			if Player.ultra_got[97] && !Player.altUltra
			{
				rate = maxcharge;
				chargetime = 1;
			}
			maxcharge *= Player.betterTail;
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0);
		alarm[1] = costtime;
	}

	break;

	//CHARGE LASER
	case 295:

	with instance_create(x,y,ChargeLaser)
	{
		maxcharge=25;//maxrate
		type = 5;
		cost = 1;
		creator = other.id
		chargetime = 4;
		costtime = 11;
		team = other.team
		if Player.skill_got[42]
		{
			chargetime = 2;
			rate += 4;
			costtime *= Player.betterTail;
			if Player.ultra_got[97] && !Player.altUltra
			{
				rate += 8;
				chargetime = 1
			}
			maxcharge *= Player.betterTail;
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0)
		alarm[1] = costtime;
	}

	break;

	//CHARGE FLAKCANNON
	case 296:

	with instance_create(x,y,ChargeFlakCannon)
	{
		maxcharge = 17;//maxrate
		type = 2;
		cost = 1;
		creator = other.id
		chargetime = 2
		costtime = 6
		team = other.team
		if Player.skill_got[42]
		{
			chargetime = 2;
			rate += 4;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
			}
			costtime *= Player.betterTail;
			maxcharge *= Player.betterTail;
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0);
		alarm[1] = costtime;
	}

	break;

	//ULTRA FLAK CANNON
	case 297:

	snd_play_fire(sndUltraGrenade)

	with instance_create(x,y,UltraFlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,12+random(3))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(34,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(34,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;


	///GOLDEN OOPS GUN
	case 298:
		with UberCont
			scrSave();
		steam_shutdown();
		game_end();
	break;
	//ULTRA WAVE GUN
	case 299:

	with instance_create(x,y,UltraWaveBurst)
	{
	creator = other.id
	ammo = 8
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//LASER WAVE GUN
	case 300:

	with instance_create(x,y,LaserWaveBurst)
	{
	creator = other.id
	ammo = 10+(Player.skill_got[17]+other.betterlaserbrain)*2
	maxAngle = 30 * other.accuracy
	angleStep = maxAngle/(ammo*0.25);
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}


	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;

	//ULTRA GLOVE
	case 301:
	
	var currentX = x;
	var currentY = y;
	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)
	instance_create(x,y,Smoke)
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 25;
		wallPierce *= 0.5;
		sprite_index=sprUltraSlash;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	instance_create(x,y,BigWallBreak);
	repeat(3+Player.skill_got[13])
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(aimDirection,40)
			instance_create(x,y,Dust)
			instance_create(x,y,Smoke)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
			{
				dmg = 25;
				wallPierce *= 0.5;
				sprite_index=sprUltraSlash;
				longarms = 0
				
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	if !skill_got[2]
	{
		scrForcePosition60fps();
		xprevious = x;
		yprevious = y;
	}
	else
	{
		x = currentX;
		y = currentY;
	}
	alarm[3]=max(4,alarm[3]);//imunity
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = -12

	break;

	//ULTRA SPLINTER GUN
	case 302:

	with instance_create(x,y,UltraSplinterBurst)
	{
		totalAccuracy = 18;
		creator = other.id
		ammo = 3
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,UltraSplinterBurst)
	{
		totalAccuracy = 6;
		creator = other.id
		ammo = 3
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,UltraSplinterBurst)
	{
		totalAccuracy = 12;
		creator = other.id
		ammo = 2
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
	/*
	with instance_create(x,y,UltraSplinter)//6 splinters
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraSplinter)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	repeat(2)
	{
	with instance_create(x,y,UltraSplinter)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraSplinter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	}
	*/
	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -8

	break;


	//ULTRA SUPER CROSSBOW
	case 303:

	snd_play_fire(sndSuperCrossbow)
	snd_play_fire(sndUltraCrossbow)

	with instance_create(x,y,UltraBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraBolt)
	{motion_add(aimDirection+5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraBolt)
	{motion_add(aimDirection-5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraBolt)
	{motion_add(aimDirection+10*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraBolt)
	{motion_add(aimDirection-10*other.accuracy,24)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,5);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(62,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(62,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 9

	break;

	//ULTRA INFUSER
	case 304:

	snd_play_fire(sndUltraCrossbow)

	with instance_create(x,y,UltraInfuseBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(45,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(45,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;

	//FROST BLOWER
	case 305:

	if !instance_exists(SnowSound)
	instance_create(x,y,SnowSound)
	with instance_create(x,y,SnowBurst)
	{
	creator = other.id
	ammo = 7
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//BULLET DISPERSE GUN
	case 306:

	snd_play_fire(sndHeavyRevolver)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,DisperseBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=2;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;


	//FROST FLARE GUN
	case 307:

	snd_play_fire(sndFlare)

	with instance_create(x,y,FrostFlare)
	{
	sticky = 0
	motion_add(aimDirection+(random(14)-7)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;

	//BULLET DISPERSE MACHINEGUN
	case 308:

	snd_play_fire(sndHeavyMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,DisperseBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=1;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;

	//POP DISPERSE GUN
	case 309:

	snd_play_fire(sndShotgun)

	with instance_create(x,y,DispersePellet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=2;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;

	//LASER DISPERSE GUN
	case 310:

	snd_play_fire(sndPlasma)


	with instance_create(x,y,DisperseLaser)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=2;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;


	//POTATO CANNON
	/*
	case 311:

	ammo[1]-=10;
	ammo[2]-=1;
	ammo[3]-=1;
	ammo[4]-=1;

	snd_play_fire(sndPartyHorn)
	snd_play_fire(sndPotato);
	repeat(69){
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,10+random(10))
	}

	repeat(10)
	with instance_create(x,y,Dust)
	motion_add(random(360),0.2+random(12))
	repeat(10)
	with instance_create(x,y,Smoke)
	motion_add(random(360),0.2+random(12))


	with instance_create(x,y,Potato)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,24)
	image_angle = direction
	team = other.team}


	if random(50)<1
	with instance_create(x,y,Sheep)
	motion_add(aimDirection+random(8)-4,16+random(8));

	if random(100)<1
	with instance_create(x,y,ExplosiveSheep)
	motion_add(aimDirection+random(8)-4,16+random(8));

	if random(900)<1
	instance_create(x,y,ScrapBoss);

	if random(900)<1
	instance_create(x,y,LilHunter);

	if random(900)<1
	instance_create(x,y,ChesireCat);

	if random(900)<1
	instance_create(x,y,BanditBoss);

	if !skill_got[2] && random(54)<1
	scrMoveContactSolid(direction+180,300);

	if !skill_got[2] && random(54)<1
	scrMoveContactSolid(direction,300);

	if !skill_got[2]
	scrMoveContactSolid(random(360),random(8));


	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 69
	wkick = choose(-24,24);

	break;
*/
	//BLASPHEMIA
	case 311:
		switch (wep_sprt[311])
		{
			case sprYVExcalibur1:
				snd_play_fire(sndSword2)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),BigPandaSlash)
				{
					dmg = 28
					sprite_index = sprExcaliburSlash;
					mask_index = mskExcaliburSlash;
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDirection,2.5+longarms)
					image_angle = direction
					team = other.team
				}

				wepangle = -wepangle
				if !skill_got[2]
				{
					motion_add(aimDirection,3)
					scrMoveContactSolid(aimDirection,1)
				}
				BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
				BackCont.shake += 1
				wkick = -4
				wep_sprt[311] = sprYVExcalibur2;
				reload -= wep_load[311] * 0.25;
			break;
			case sprYVExcalibur2:
				snd_play_fire(sndHammer)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),BigPandaSlash)
				{
					dmg = 35
					sprite_index = sprExcaliburBigSlash;
					image_yscale = choose(1,-1);
					mask_index = mskBigSlash;
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDirection,2.5+longarms)
					image_angle = direction
					team = other.team
				}

				wepangle = -wepangle
				if !skill_got[2]
				{
					motion_add(aimDirection,3)
					scrMoveContactSolid(aimDirection,4)
				}
				BackCont.viewx2 += lengthdir_x(16,aimDirection)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(16,aimDirection)*UberCont.opt_shake
				BackCont.shake += 10
				wkick = -5
				wep_sprt[311] = sprYVExcalibur3;
			break;
			case sprYVExcalibur3:
				snd_play_fire(sndSword2)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),LanceShank)
				{
					dmg = 24
					sprite_index = sprExcaliburBigShank;
					mask_index = mskExcaliburBigShank;
					image_yscale = choose(1,-1);
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDirection,4+longarms)
					image_angle = direction
					team = other.team
				}

				wepangle = -wepangle
				if !skill_got[2]
				{
					motion_add(aimDirection,5)
					scrMoveContactSolid(aimDirection,5)
				}
				BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
				BackCont.shake += 1
				wkick = -6
				wep_sprt[311] = sprYVExcalibur4;
				reload -= wep_load[311] * 0.35;
			break;
			case sprYVExcalibur4:
				snd_play_fire(sndFlail)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),ExcaliburHammerBoom)
				{
					dmg = 28
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDirection,2.5+longarms)
					image_angle = direction;
					image_yscale = other.wepflip;
					team = other.team
				}

				wepangle = -wepangle
				if !skill_got[2]
				{
					motion_add(aimDirection,3)
					scrMoveContactSolid(aimDirection,3)
				}
				BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
				BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
				BackCont.shake += 10
				wkick = -8
				wep_sprt[311] = sprYVExcalibur1;
				reload += wep_load[311] * 0.5;
			break;
		}
	
	break;
	
	//ROGUE RIFLE
	case 312:

	with instance_create(x,y,RogueRifleBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//HYPER INFUSER
	case 313:

	snd_play_fire(sndHeavyCrossbow)
	snd_play_fire(sndHyperSlugger)

	with instance_create(x,y,HyperInfuseBolt)
	{
	direction = aimDirection+(random(4)-2)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 8

	break;

	//CHARGE SPLINTERGUN
	case 314:

	with instance_create(x,y,ChargeSplinterGun)
	{
	maxcharge=32;//maxrate
	type=3;
	cost=1;
	creator = other.id
	//ammo = 9
	chargetime = 2
	costtime = 16
	team = other.team
	if Player.skill_got[42]
	{
		chargetime = -8;
		costtime *= Player.betterTail;
		rate += 2;
		if Player.ultra_got[97] && !Player.altUltra
		{
			chargetime = -100;
			rate += 2;
			Player.ammo[type]-=cost
		}
		maxcharge *= Player.betterTail;
		scrActivateTail(hasTailNow);
	}
	event_perform(ev_alarm,0)
	event_perform(ev_alarm,1) 
	}

	break;

	//MONEY GUN
	case 315:
	snd_play_fire(sndPopgun)
	snd_play_fire(sndPartyHorn)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,MoneyBullet)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 4

	break;

	//HUNTER HEAVY SNIPER
	case 316:

	snd_play_fire(sndSniperFire)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(4*other.accuracy),16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection-(4*other.accuracy),16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection-(8*other.accuracy),16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(8*other.accuracy),16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4

	break;

	//AUTO TOXICBOW
	case 317:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(36,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(36,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//SUPER TOXICBOW
	case 318:

	snd_play_fire(sndSuperCrossbow)

	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection+5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection-5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection+10*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ToxicBolt)
	{motion_add(aimDirection-10*other.accuracy,24)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,6);
		motion_add(aimDirection+180,1)
	}

	BackCont.viewx2 += lengthdir_x(55,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(55,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;

	//TOXIC ION CANNON
	case 319:



	snd_play_fire(sndGrenade)

	snd_play_fire(sndToxicBarrelGas);

	with instance_create(x,y,ToxicIonBurst)
	{
	creator = other.id
	ammo = 20
	time = 1
	team = other.team
	alarm[0] = 14
	}

	BackCont.shake += 6
	wkick = 3

	break;


	//ROCKET DISPERSE GUN
	case 320:

	snd_play_fire(sndRocket)

	with instance_create(x,y,DisperseRocket)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=5;
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;

	//LIGHTNING SCREWDRIVER
	case 321:

	snd_play_fire(sndScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),LightningShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,2)
		scrMoveContactSolid(aimDirection,1)
	}
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -8

	break;


	//SNOW DRAGON
	case 322:

	if !instance_exists(SnowDragonSound)
	instance_create(x,y,SnowDragonSound)
	with instance_create(x,y,SnowDragonBurst)
	{
	creator = other.id
	ammo = 4
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//THUNDERCRACK
	case 323:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);

	snd_play_fire(choose(sndWater1,sndWater2) );


	repeat(2)
	{
		with instance_create(x,y,Tentacle)
		{image_angle = aimDirection+(random(30)-15)*other.accuracy
		creator=other.id;
		team = other.team
		ammo = 17
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}
		
	}
	repeat(6){
		with instance_create(x,y,FishBoost)
		{
		motion_add( aimDirection+random(60)-30,2+random(4) );
		}}

	}
	if Player.skill_got[17] = 1
	snd_play_fire(sndLightning3)
	else
	snd_play_fire(sndLightning1)


	repeat(2)
	{
		with instance_create(x,y,Lightning)
		{image_angle = aimDirection+(random(30)-15)-30*other.accuracy
		team = other.team
		ammo = 13
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}

		with instance_create(x,y,Lightning)
		{image_angle = aimDirection+(random(30)-15)+30*other.accuracy
		team = other.team
		ammo = 12
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}

	}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	if wep_type[wep]=4
	wep_type[wep]=5;//energy
	else
	wep_type[wep]=4;//xplosive

	break;


	//FROST CANNON
	case 324:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndFrostShot1)

	with instance_create(x,y,IceCannonBall)
	{
	image_angle=random(360);
	motion_add(aimDirection+(random(8)-4)*other.accuracy,8)
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;

	//FROST FLAK CANNON
	case 325:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,FrostFlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,14)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 8

	break;

	//TOXIC CANNON
	case 326:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndToxicBoltGas)

	with instance_create(x,y,ToxicCannonBall)
	{
	image_angle=aimDirection;
	motion_add(aimDirection+(random(8)-4)*other.accuracy,3)
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 7

	break;

	//BLOOD CANNON
	case 327:

	snd_play_fire(sndBloodCannon);

	with instance_create(x,y,BloodCannonBall)
	{
	image_angle=random(360);
	motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;

	//BLACK SWORD
	case 328:

	if my_health>0
	snd_play_fire(choose(sndSword1,sndSword2))
	else
	{
		snd_play_fire(sndBlackSwordMega)
		reload -= wep_load[wep]*0.25;
	}

	instance_create(x,y,Dust)
	if !skill_got[2]
	scrMoveContactSolid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BlackSwordSlash)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(9,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -6

	break;

	//DARK SWORD
	case 329:

	if my_health>0
	snd_play_fire(choose(sndSword1,sndSword2))
	else
	{
		snd_play_fire(sndBloodCannonLoop);
		snd_play_fire(sndBlackSwordMega);
		reload -= wep_load[wep]*0.25;
	}

	instance_create(x,y,Dust)
	if !skill_got[2]
	scrMoveContactSolid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*19,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*19,aimDirection),DarkSwordSlash)
	{
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	speed = -speed*0.5
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -7

	break;


	//DOOM PISTOL
	case 330:

	snd_play_fire(sndGrenadeRifle)
	
	with instance_create(x,y,DoomGrenade)
	{
		if choose(true,false)
		alarm[2] = 8;
	walk=6+irandom(6);
	motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 4

	break;

	//DOOM RIFLE
	case 331:

	snd_play_fire(sndGrenadeShotgun);

	with instance_create(x,y,DoomBurst)
	{
	creator = other.id
	ammo = 3
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//ENERGY SHOVEL
	case 332:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergySlash)
	{
		dmg = 22;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection-50*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*Player.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection+50*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*Player.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,6)
	}
	BackCont.viewx2 += lengthdir_x(26,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(26,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -5

	break;

	//HYPER GATLING BAZOOKA
	case 333:

	snd_play_fire(sndRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,14 - (instance_number(Rocket) % 3))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 10

	break;

	//ION BOMB
	case 334:

	snd_play_fire(sndRocket)
	snd_play_fire(sndHyperSlugger)

	with instance_create(UberCont.mouse__x,UberCont.mouse__y,Explosion)


	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4

	break;

	//FROST SMG
	case 335:

	snd_play_fire(sndFrostShot1);

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;

	//FROST ASSAULT RIFLE
	case 336:

	with instance_create(x,y,FrostBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;

	//MINI LIGHTNING PISTOL
	case 337:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLightning3)
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(30)-15)*other.accuracy
	team = other.team
	ammo = 11
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 3

	break;

	//KRAKEN PISTOL
	case 338:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);

	snd_play_fire(choose(sndWater1,sndWater2) );


	with instance_create(x,y,Tentacle)
	{image_angle = aimDirection+(random(30)-15)*other.accuracy
	creator=other.id;
	team = other.team
	ammo = 11
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(4){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;

	//FROST AXE
	case 339:

	snd_play_fire(sndFrostShot1);
	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)
	var t = team;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),FrostSlash)
	{
		dmg = 20//shovel is 12 is frostglove
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = t
	}
	var len = 32 + ((Player.skill_got[13]+bettermelee)*20);
	var angStep = (100*accuracy) / 6;
	var aimDir = aimDirection - (angStep*3);
	var fx = x + lengthdir_x(len,aimDir);
	var fy = y + lengthdir_y(len,aimDir);
	repeat(6)
	{
		with instance_create(fx,fy,IceFlame)
		{
			motion_add(aimDir,4+random(1))
			image_angle = direction
			team = t
		}
		aimDir += angStep;
		fx = x + lengthdir_x(len,aimDir);
		fy = y + lengthdir_y(len,aimDir);
	}
	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,5)
		scrMoveContactSolid(aimDirection,4)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//TRIDENT
	case 340:

	snd_play_fire(sndBloodHammer)
	snd_play_fire(sndRoll)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),KrakenSlash)
	{
		dmg = 16//shovel is 12 is frostglove
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
		with instance_create(x,y,LightningSpawn)
		{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
		}
		with instance_create(x,y,FishBoost)
		{
			motion_add( other.image_angle+random(60)-30,2+random(4) );
		}
	}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,5)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//ULTRA KRAKEN CANNON
	case 341:

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,4)
	}

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodCannon);
	snd_play_fire(choose(sndWater1,sndWater2) );

	repeat(8){
		with instance_create(x,y,Tentacle)
		{
			sprite_index=sprUltraTentacle;
			ultra=true;
			dmg = 6;//10+irandom(4)
			if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
			{
				dmg += 1;
			}
			image_angle = aimDirection+(random(60)-30)*other.accuracy
			team = other.team
			ammo = 45//24
			image_yscale += 0.3;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}

		}
	}

	repeat(8){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 10

	break;

	//KRAKEN ION CANNON
	case 342:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);
	snd_play_fire(sndHyperSlugger);

	with instance_create(x,y,KrakenIonBurst)
	{
	creator = other.id
	ammo = 15
	maxTime = 15;
	time = 1
	team = other.team
	alarm[0] = 14
	}

	BackCont.shake += 7
	wkick = 4


	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake

	break;

	//DIMENSION GENERATOR
	case 343:
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,3)
	}

	snd_play_fire(sndLightningPlasma2)
	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodCannon);

	snd_play_fire(choose(sndWater1,sndWater2) );

	repeat(2){
	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(60)-30)*other.accuracy
	team = other.team
	ammo = 6
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	}


	with instance_create(x,y,Tentacle)
	{image_angle = aimDirection+(random(30)-15)*other.accuracy
	creator=other.id;
	team = other.team
	ammo = 7
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(6){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	}
	snd_loop(sndBloodCannonLoop);
	with instance_create(x,y,Implosion)
	{
		kraken=true;
		sticky = 0
		if Player.skill_got[42]
		{
			duration = Player.betterTail;
			time -= 1;
			if Player.ultra_got[97] && !Player.altUltra
				time = 1;
			scrActivateTail(hasTailNow);
		}
		motion_add(aimDirection+(random(6)-3)*other.accuracy,5)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;

	//ELECTRO GUN
	case 344:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)


	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBall)
	{
	motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.6);
		motion_add(aimDirection+180,0.8)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5

	break;

	//ELECTRO RIFLE
	case 345:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)


	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBall)
	{
	motion_add(aimDirection+(random(16)-8)*other.accuracy,4)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.5);
		motion_add(aimDirection+180,0.8)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 4
	resetSpeed=false;

	break;

	//AUTO BULLET SHOTGUN
	case 346:

	snd_play_fire(sndShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet1)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;


	//TRIPLE ELECTRO GUN
	case 347:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	snd_play_fire(choose(sndSpark1,sndSpark2));

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBall)
	{
	motion_add(aimDirection+(random(8)-4)+24*other.accuracy,4)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBall)
	{
	motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBall)
	{
	motion_add(aimDirection+(random(8)-4)-24*other.accuracy,4)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5
	resetSpeed=false;

	break;

	//FROG BLASTER
	case 348:

	snd_play_fire(sndFrogPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	var dmgAdd = 0;
	if instance_exists(Player) && Player.ultra_got[28]//roids ultra d
	{
		dmgAdd += 2;
	}
	
	repeat(3)
	{
		with instance_create(x,y,EnemyBullet2)
		{
			motion_add(aimDirection+(random(16)-8)*other.accuracy,9+random(7))
			image_angle = direction
			team = other.team
			norecycle = false;
			dmg += dmgAdd;
			event_perform(ev_alarm,11);
		}
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;

	//GOLDEN FROG BLASTER
	case 349:

	snd_play_fire(sndFrogPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	
	var dmgAdd = 0;
	if instance_exists(Player) && Player.ultra_got[28]//roids ultra d
	{
		dmgAdd += 2;
	}
	
	repeat(5)
	{
		with instance_create(x,y,EnemyBullet2)
		{
			motion_add(aimDirection+(random(26)-13)*other.accuracy,11+random(5))
			image_angle = direction
			team = other.team
			norecycle = false;
			dmg += dmgAdd;
			event_perform(ev_alarm,11);
		}
	}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3

	break;


	//HYPER GLOVE
	case 350:

	snd_play_fire(sndHammer)
	var currentX = x;
	var currentY = y;
	instance_create(x,y,Dust)
	instance_create(x,y,Smoke)
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 18;
		sprite_index=sprHeavySlash;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	repeat(10+(Player.skill_got[13] * 5))
	{
		if !hitWall
		{
			hitWall = scrMoveContactSolid(aimDirection,42)
			instance_create(x,y,Dust)
			instance_create(x,y,Smoke)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
			{
				dmg = 16;
				sprite_index=sprHeavySlash;
				longarms = 0
				
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	if !skill_got[2]
	{
	scrForcePosition60fps();
	xprevious = x;
	yprevious = y;
	}
	else
	{
		x = currentX;
		y = currentY;
	}
	alarm[3]=max(4,alarm[3]);//imunity
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -12

	break;

	//BULLET DISPERSE DISPERSE GUN
	case 351:

	snd_play_fire(sndHeavyRevolver)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,DisperseDisperseBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,18)
	image_angle = direction
	team = other.team
	time=2;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;

	//ELEMENTAL GUN
	case 352:

	//snow
	if !instance_exists(SnowSound)
	instance_create(x,y,SnowSound)
	with instance_create(x,y,SnowBurst)
	{
	creator = other.id
	ammo = 4//7
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	burnafter=true;//fire
	}

	//frost
	snd_play_fire(sndFrostShot1)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,FreezeBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	//Flame
	snd_play_fire(sndFireShotgun)

	repeat(4)
	{
	with instance_create(x,y,Bullet6)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}


	//kraken
	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);

	snd_play_fire(choose(sndWater1,sndWater2) );


	with instance_create(x,y,Tentacle)
	{
		image_angle = aimDirection+(random(30)-15)*other.accuracy
	creator=other.id;
	team = other.team
	ammo = 16
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(6){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	}
	//lightning
	if Player.skill_got[17] = 1
	snd_play_fire(choose(sndLightning2,sndLightning3))
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(6)-3)*other.accuracy
	team = other.team
	ammo = 16
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	if wep_type[wep]=4
	wep_type[wep]=5;//energy
	else
	wep_type[wep]=4;//xplosive

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 6

	break;

	//TERMITE GUN
	case 353:

	snd_play_fire(sndTermite)
	//with instance_create(x,y,Shell)
	//motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Termite)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,4+irandom(8))
	team = other.team}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;

	//SUPER BOUNCER FLAK CANNON
	case 354:

	snd_play_fire(sndFlakCannon);
	snd_play_fire(sndWaveGun);

	with instance_create(x,y,SuperBouncerFlakBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,5.1)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 9

	break;
	
	//JAWBREAKER
	case 355:
	var aimdir = aimDirection+(random(10)-5*accuracy);
	var offset = 10 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	snd_play_fire(sndEraser)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,EraserBurst)
	{
		projectileSpeed = 12;
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 3
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,EraserBurst)
	{
		projectileSpeed = 12;
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 3
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimdir+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimdir+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;
	
	//HEAVY GRENADE LAUNCHER
	case 356:

	snd_play_fire(sndHeavyNader)

	with instance_create(x,y,HeavyGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 7

	break;
	
	//AUTO HEAVY GRENADE LAUNCHER
	case 357:

	snd_play_fire(sndHeavyNader)

	with instance_create(x,y,HeavyGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(16)-8)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 6

	break;
	
	//ION TELEPORTER
	case 358:
	
		snd_play_fire(sndHyperLightning);
		if alarm[3]<1
		alarm[3]=max(3,alarm[3]);//imunity
		instance_create(x,y,Teleport);
		snd_play_fire(sndHyperLightning);
		repeat(5){
			with instance_create(x,y,Smoke)
			motion_add(random(360),1+random(3))
		}
    
		var xx=UberCont.mouse__x;
		var yy=UberCont.mouse__y;
		scrForcePosition60fps();
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 2    

		var telepower = 1;
		if (race == 15) { //atom, add some serious power to that teleport!
			telepower = 5;
			snd_play_fire(sndLightningCannonEnd);
			repeat(5) {
				with instance_create(xx,yy,Lightning) {
					image_angle = aimDirection+(random(360))*other.accuracy
					team = other.team
					ammo = 6
					event_perform(ev_alarm,0)
					visible = 0
					with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
				}
			}
			if (Player.skill_got[5]) { //we have throne butt too? time to kick it up a notch
				snd_play_fire(sndPlasmaBigExplode)
				var ang = random(360)
				repeat(6)
				{
					with instance_create(xx,yy,PlasmaBall) {
						motion_add(ang,2);
						image_angle = direction
						originalDirection=ang;
						team = other.team
					}
					ang += 360/6
				}
			}
		}
		
		snd_play_fire(sndLightning3);
		repeat(telepower) {
			instance_create(xx+random(24)-12,yy+random(24)-12,PlasmaImpact);
			
			with instance_create(xx,yy,Lightning)
				{image_angle = aimDirection+(random(360))*other.accuracy
				team = other.team
				ammo = 6
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle}
		}
		
		repeat(5) {
			with instance_create(xx,yy,Smoke)
			motion_add(random(360),1+random(3))
		}
		if race == 18 || (place_meeting(UberCont.mouse__x,UberCont.mouse__y,Floor) and not place_meeting(UberCont.mouse__x, UberCont.mouse__y, Wall)) {
			x = xx;
			y = yy;
		}

	break;

	//LASER BOMB LAUNCHER
	case 359:

	snd_play_fire(sndHeavyNader)

	with instance_create(x,y,LaserBomb)
	{
	sticky = 0
	motion_add(aimDirection+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 7

	break;
	
	//FLAIL
	case 360:

	snd_play_fire(sndFlail)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Flail)
	{
	longarms = 0
	dmg = 14;
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	image_yscale = other.wepflip;//Line up animation with actual holding of weapon
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,2);
		motion_add(aimDirection,0.5)
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -5

	break;
	
	//REWIRER
	case 361:

	snd_play_fire(sndTripwireLauncher)

	with instance_create(x,y,WireBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//SPLINTER GRENADE LAUNCHER
	case 362:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,SplinterGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 6

	break;
	
	//SPLINTER MINIGUN
	case 363:
	
	snd_play_fire(sndSplinterMinigun)
	
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 26;
		creator = other.id
		ammo = 2
		time = 4
		team = other.team
		event_perform(ev_alarm,0) 
	}
	
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5
	
	break;
	
	//KRAKEN DISPERSE GUN
	case 364:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodCannon);

	snd_play_fire(choose(sndWater1,sndWater2) );
	snd_loop(sndBloodCannonLoop);
	
	with instance_create(x,y,DisperseKraken)
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
		image_angle = direction
		team = other.team
		time=2;
		owner = other.id;
		event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 5

	break;
	
	//SPLINTER SHOTGUN
	case 365:

	snd_play_fire(sndSplinterShotgun)

	repeat(6)
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(20)-40)*other.accuracy,15+random(10))
	image_angle = direction
	team = other.team}
	}
	repeat(10)
	{
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(70)-35)*other.accuracy,15+random(10))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick -= 5

	break;
	
	//BOUNCER REVOLVER
	case 366:

	snd_play_fire(sndBouncerPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet3)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,6.0)//5.5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6.5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6.5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 2.2

	break;
	
	//DIRECTOR GRENADE LAUNCHER
	case 367:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,DirectorGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;
	
	//KRAKEN GRENADE LAUNCHER
	case 368:

	snd_play_fire(sndGrenade);
	snd_play_fire(sndRoll);
	//snd_play_fire(sndBloodLauncher);

	snd_play_fire(choose(sndWater1,sndWater2) );

	with instance_create(x,y,OceanBomb)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6.5

	break;
	
	//ULTRA SCREWDRIVER
	case 369:

	snd_play_fire(sndUltraScrewdriver)

	instance_create(x,y,Smoke)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),UltraShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,9+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,2)
		scrMoveContactSolid(aimDirection,1)
	}
	BackCont.viewx2 += lengthdir_x(13,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -10

	break;
	
	//OBSIDIAN THROWING KNIFE
	case 370:
	snd_play_fire(sndEnemySlash);
	var yc = object_index != Player;
	with instance_create(x,y,ThrowWepNoReturn)
	{
		team=other.team;
		motion_add(aimDirection,18);
		scrWeapons()
		wep=other.wep;
		name = wep_name[wep]
		//ammo = 50
		type = wep_type[wep]
		curse = other.curse
		wepmod1=other.wepmod1;
		wepmod2=other.wepmod2;
		wepmod3=other.wepmod3;
		wepmod4=other.wepmod4;
		isPermanent = other.isPermanent;
		hasBeenEaten = other.hasBeenEaten;
		thrownByCuz = yc;
		sprite_index = wep_sprt[wep]
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 1
	if curse
	{
		if armour > 0
			armour -= 1;
		else
			DealDamage(7);
	}
	//TOSSING CURSED WEAPONS!?
	if object_index == Player && ultra_got[29] && altUltra && bwep != 0//ROBOT EXCLUSIVE TASTE
	{
		maxhealth += 4;
	}
	if race == 7
	{
		//wep = 0;
		clicked = 0;
		can_shoot = 0;
		if object_index == Player && ultra_got[27] && !altUltra
		{
			if bwep == wep
				bwep = 0;
			if twep == wep
				twep = 0;
		}
		wep = 0;
		scrSwapWeps();
		//bwep = 0;
	}
	else
	{
		if object_index == CloneShooter
		{
			if !yc
				scrSwapWeps();
			clicked = 0;
			can_shoot = 0;
			bwep = 0
		}
		else
		{
			if !yc
				scrSwapWeps();
			clicked = 0;
			can_shoot = 0;
			bwep = 0
		}
	}
	break;
	
	//ULTRA MINIGUN
	case 371:

	snd_play_fire(sndMinigun)
	snd_play_fire(sndUltraMinigun)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet4)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//VAN CANNON
	case 372:
	
		snd_play_fire(sndPopgun);
		snd_play_fire(sndPlasmaHit);
		
		with instance_create(x,y,VanCannon)
		{
			direction = aimDirection+(random(16)-8)*other.accuracy;
			image_angle = direction;
			team = other.team;
		}
		BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 30
		wkick = 8
	break;
	
	//VAN PUSHER
	case 373:

	snd_play_2d(sndGhettoBlast,0.1);
	snd_play_2d(sndVanPusher,0.2);

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),VanPusher)
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,5)
		longarms = 0
		
			longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,3+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection,-6)
	BackCont.viewx2 += lengthdir_x(5,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = -8

	break;
	
	//QUADRUPLE SUPER PLASMA CANNON
	case 374:

	Sleep(30);
	snd_play_fire(sndSuperPlasmaCannon)
	snd_play_fire(sndPlasmaHit)
	snd_play_fire(sndSuperPlasmaCannon)
	snd_play_fire(sndExplosionXXL)
	Sleep(10);

	with instance_create(x,y,PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)+12*other.accuracy,2)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)-12*other.accuracy,2)
	image_angle = direction
	team = other.team}
	
	with instance_create(x,y,PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)+24*other.accuracy,2)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,PlasmaHuge)
	{motion_add(aimDirection+(random(4)-2)-24*other.accuracy,2)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,64);
		motion_add(aimDirection+180,24)
	}
	BackCont.viewx2 += lengthdir_x(45,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(45,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 60
	wkick = 30
	resetSpeed=false;

	break;
	
	//INVERSION MAGNET
	case 375:

	snd_play_fire(sndScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*8,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*8,aimDirection),Shank)
	{
		dmg = 3;
		
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(2,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -2

	break;
	
	//INFINITY SMART GUN
	case 376:

	snd_play_fire(sndSmartgun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{
	motion_add(aimDirection+(random(12)-6)*other.accuracy,16)

	var target;
	target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

	if instance_exists(target) && target.team != team
	{
	        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
	        {
	            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
	            {
					direction=point_direction(x,y,target.x,target.y)+(random(12)-6)*other.accuracy;
					motion_add(aimDirection+(random(12)-6)*other.accuracy,15)
	            }
	       }
		   else
		   {
				motion_add(aimDirection+(random(12)-6)*other.accuracy,15)   
		   }
       
	}
	else
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,15)	
	}

	image_angle = direction
	team = other.team

	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3.5
	wkick = 4

	break;
	
	//EXPLOSION HAMMER
	case 377:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)
	var aimDir = aimDirection;
	with instance_create(x+lengthdir_x(0.2+(Player.skill_got[13]+bettermelee)*20,aimDir),y+lengthdir_y(0.2+(Player.skill_got[13]+bettermelee)*20,aimDir),ExplosiveSlash)
	{
		dmg = 10
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDir,1+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,2);
		motion_add(aimDirection+180,5)
	}
	BackCont.viewx2 += lengthdir_x(13,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -5

	break;
	
	//LOVE BOMBER
	case 378:

	snd_play_fire(sndGrenade)

	with instance_create(x,y,LoveBomb)
	{
	motion_add(aimDirection+(random(6)-3)*other.accuracy,11)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5

	break;
	
	//BULLET WALL
	case 379:
		snd_play_fire(sndShotgun);
		snd_play_fire(sndQuadMachinegun);
		var msk = mask_index;
		mask_index = mskBullet1;
		var aimDir = aimDirection+(random(4)-2)*accuracy;
		var len = 6+(accuracy*3);
		var bx = x;
		var by = y;
		var xstep = lengthdir_x(len,aimDir+90);
		var ystep = lengthdir_y(len,aimDir+90);
		var count = 0;
		while (!place_meeting(bx,by,Wall) && count < 16 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,Bullet1)
			{
				motion_add(aimDir,12);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		var xstep = lengthdir_x(len,aimDir-90);
		var ystep = lengthdir_y(len,aimDir-90);
		bx = x + xstep;
		by = y + ystep;
		count = 0;
		while (!place_meeting(bx,by,Wall) && count < 16 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,Bullet1)
			{
				motion_add(aimDir,12);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 7

	break;
	
	//BULLET LASER
	case 380:
		snd_play_fire(sndSniperFire);
		snd_play_fire(sndUltraPistol);
		var msk = mask_index;
		mask_index = mskBullet1;
		var aimDir = aimDirection+(random(6)-3)*accuracy;
		var len = 14+(accuracy*2);
		var xstep = lengthdir_x(len,aimDir);
		var ystep = lengthdir_y(len,aimDir);
		var bx = x;
		var by = y;
		var count = 0;
		while (!place_meeting(bx,by,Wall) && count < 32 || count < 2)
		{
			with instance_create(bx,by,Bullet1)
			{
				motion_add(aimDir,12);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 7

	break;
	
	//MUCHAS PELOTILLA
	case 381:
	snd_play_fire(sndPopgun);
	snd_play_fire(sndUltraShotgun);
	snd_play_fire(sndQuadMachinegun);
	Sleep(40);
	var aimDir = aimDirection+(random(12)-6)*accuracy;
	var r = right;
	var t = team;
	with Floor
	{
		if point_distance(x,y,other.x,other.y) < 350
		{
			with instance_create(x+16,y+16,Bullet2)
			{
				motion_add(0,14+random(2))
				image_angle = direction
				team = t
			}
			with instance_create(x+16,y+16,Bullet2)
			{
				motion_add(180,14+random(2))
				image_angle = direction
				team = t
			}
		}
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 10

	break;
	
	//MUCHAS LÁSERES
	case 382:
	snd_play_fire(sndLaser);
	snd_play_fire(sndUltraLaserUpg);
	snd_play_fire(sndPlasmaHit);
	Sleep(40);
	var t = team;
	with Wall
	{
		if point_distance(x,y,other.x,other.y) < 350
		{
			if collision_point(x+8,y+18,Floor,false,false)//Down
			{
				with instance_create(x+8,y+16,Laser)
				{
					image_angle = 270;
					team = t
					event_perform(ev_alarm,0)
				}
			}
			if collision_point(x+18,y+8,Floor,false,false)//Right
			{
				with instance_create(x+16,y+8,Laser)
				{
					image_angle = 0;
					team = t
					event_perform(ev_alarm,0)
				}
			}
		}
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 20
	wkick = 10

	break;
	
	//GOLDEN JAWBREAKER
	case 383:
	var aimdir = aimDirection+(random(6)-3*accuracy);
	var offset = 9 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	snd_play_fire(sndEraser)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,EraserBurst)
	{
		projectileSpeed = 12.25;
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 3
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,EraserBurst)
	{
		projectileSpeed = 12.25;
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id;
		ammo = 3
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(9,aimdir+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimdir+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 7

	break;
	
	//MINI PLASMA GUN
	case 384:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaMinigun)
	else
	snd_play_fire(sndPlasmaMinigunUpg)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),MiniPlasmaBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,2)
		originalDirection = direction;
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2.2
	resetSpeed=false;

	break;
	
	//SPLINTER BLADE GUN
	case 385:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,BladeSplintershooter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	ang = direction;
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 4

	break;
	
	//BOUNCER PLASMA GUN
	case 386:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),BouncerPlasmaBall)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.7);
		motion_add(aimDirection+180,0.8)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5

	break;
	
	//BOUNCER PLASMA RIFLE
	case 387:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),BouncerPlasmaBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,4)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.6);
		motion_add(aimDirection+180,0.8)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;
	
	//BOUNCER PLASMA CANNON
	case 388:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigUpg)
	else
	snd_play_fire(sndPlasmaBig)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),BouncerPlasmaBallBig)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,4)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,8);
		motion_add(aimDirection+180,6)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10
	resetSpeed=false;

	break;
	
	//DOUBLE LASER PISTOL
	case 389:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	var aimDir = aimDirection;
	var len = 5 * accuracy;
	with instance_create(x+lengthdir_x(len,aimDir+90),y+lengthdir_y(len,aimDir+90),Laser)
	{image_angle = aimDir+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}
	with instance_create(x+lengthdir_x(len,aimDir-90),y+lengthdir_y(len,aimDir-90),Laser)
	{image_angle = aimDir+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//JAWSPLITTER
	case 390:
	var aimdir = aimDirection+(random(4)-2*accuracy);
	var offset = 7 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	snd_play_fire(sndSplinterGun)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,SplinterBurst)
	{
		mox=ldx;
		moy=ldy;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,SplinterBurst)
	{
		mox=ldx;
		moy=ldy;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimdir+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimdir+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;
	
	//GOLDEN JAWSPLITTER
	case 391:
	var aimdir = aimDirection+(random(2)-1*accuracy);
	var offset = 6 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	snd_play_fire(sndSplinterGun)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,SplinterBurst)
	{
		mox=ldx;
		moy=ldy;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,SplinterBurst)
	{
		mox=ldx;
		moy=ldy;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8.2,aimdir+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8.2,aimdir+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6.2

	break;
	
	//MUCHAS FUEGO
	case 392:
	Sleep(40);
	snd_play_fire(sndDragonStart);
	snd_play_fire(sndDragonStop);
	snd_play_fire(sndRocket);
	snd_play_fire(sndRocket);
	var r = right;
	var t = team;
	with Floor
	{
		if point_distance(x,y,other.x,other.y) < 350
		{
			with instance_create(x+16,y+16,Flame)
			{
				motion_add(0,4)
				//image_angle = direction
				team = t
			}
			with instance_create(x+16,y+16,Flame)
			{
				motion_add(90,4)
				//image_angle = direction
				team = t
			}
			with instance_create(x+16,y+16,Flame)
			{
				motion_add(270,4)
				//image_angle = direction
				team = t
			}
			with instance_create(x+16,y+16,Flame)
			{
				motion_add(180,4)
				//image_angle = direction
				team = t
			}
		}
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 10

	break;
	
	//TWO HEADED DRAGON
	case 393:
		if !instance_exists(TwoHeadedDragonSound)
		instance_create(x,y,TwoHeadedDragonSound)
		
		with instance_create(x,y,TwoHeadedDragonBurst)
		{
			creator = other.id
			ammo = 6
			time = 1
			team = other.team
			event_perform(ev_alarm,0) 
		}
		
	break;
	
	//FLAME AXE
	case 394:
		snd_play_fire(sndHammer)
		snd_play_fire(sndFlareExplode)

		instance_create(x,y,Dust)
		var t = team;

		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),FlameSlash)
		{
			dmg = 18//shovel is 12 is frostglove
			longarms = 0
			
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.5+longarms)
			image_angle = direction
			team = t
		}
		var len = 32 + ((Player.skill_got[13]+bettermelee)*20);
		var angStep = (100*accuracy) / 10;
		var aimDir = aimDirection - (angStep*5);
		var fx = x + lengthdir_x(len,aimDir);
		var fy = y + lengthdir_y(len,aimDir);
		repeat(10)
		{
			with instance_create(fx,fy,Flame)
			{
				motion_add(aimDir,4+random(1))
				//image_angle = direction
				team = t
			}
			aimDir += angStep;
			fx = x + lengthdir_x(len,aimDir);
			fy = y + lengthdir_y(len,aimDir);
		}
		wepangle = -wepangle
		if !skill_got[2]
	{
		motion_add(aimDirection,5)
		scrMoveContactSolid(aimDirection,4)
	}
		BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
		BackCont.shake += 1
		wkick = -4
	break;
	
	//ELECTRO CANNON
	case 395:
		if Player.skill_got[17] = 1
		snd_play_fire(sndPlasmaBigUpg)
		else
		snd_play_fire(sndPlasmaBig)


		with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBallBig)
		{
		motion_add(aimDirection+(random(8)-4)*other.accuracy,3)
		image_angle = direction
		team=other.team;

		with instance_create(x,y,ElectroBallSpawn)
		{motion_add(aimDirection+(random(8)-4),1)
		image_angle = direction}

		}

		Sleep(10);
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,12);
			motion_add(aimDirection+180,4)
		}
		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = 6
	break;
	
	//DISCO GUN
	case 396:
		Sleep(10)
		if !instance_exists(DISCOTIME)
		{
			instance_create(x,y,DISCOTIME);	
		}
		snd_play_fire(sndClusterLauncher)

		with instance_create(x,y,DiscoBall)
		{
		sticky = 0
		motion_add(aimDirection+(random(6)-3)*other.accuracy,12)
		image_angle = direction
		team = other.team}
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,8);
			motion_add(aimDirection+180,3)
		}
		BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 8
		wkick = 5
		wepangle = -wepangle
	break;
	
	
	//SWARM BOMB
	case 397:
		snd_play_fire(sndGrenadeRifle)
		with instance_create(x,y,SwarmBomb)
		{
			sticky = 0
			motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
			image_angle = direction
			team = other.team
			if Player.skill_got[42]
			{
				ammo = ceil(ammo*Player.betterTail);
				scrActivateTail(hasTailNow);
				angStep = 360/ammo;
				angOffset = 180 + (angStep*0.5);
			}
		}

		BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 6
	break;
	
	//LIGHTNING LASER
	case 398:
		if Player.skill_got[17] = 1
		{
			snd_play_fire(sndLightning3)
			snd_play_fire(sndLaserUpg)
		}
		else
		{
			snd_play_fire(sndLightning1)
			snd_play_fire(sndLaser)
		}
		var aimDir = aimDirection+(random(2)-1)*other.accuracy;
		with instance_create(x,y,Laser)
		{image_angle = aimDir;
		team = other.team;
		startImg = sprLightningLaserStart;
		endImg = sprLightningLaserEnd;
		sprite_index = sprLightningLaser;
		event_perform(ev_alarm,0);
		}
		with instance_create(x,y,LaserLightning)
		{image_angle = aimDir;
		team = other.team;
		event_perform(ev_alarm,0);
		}

		BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 6
		wkick = 4
	break;
	
	//WRONG DIRECTION
	case 399:
		snd_play_fire(sndHeavyCrossbow)

		var aimDir = aimDirection+(random(4)-2)*accuracy
		var sx = x + lengthdir_x(8,aimDir);
		var sy = y + lengthdir_y(8,aimDir);
		with instance_create(sx,sy,HeavyBolt)
		{motion_add(aimDir+90*other.accuracy,18)
		image_angle = direction
		team = other.team}
		
		with instance_create(sx,sy,HeavyBolt)
		{motion_add(aimDir-90*other.accuracy,18)
		image_angle = direction
		team = other.team}
		if !skill_got[2]
		{
			motion_add(aimDirection,4)
			scrMoveContactSolid(aimDirection,5)
		}
		BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 12
		wkick = 6
	break;
	
	
	//GOLDEN GRENADE PISTOL
	case 400:
		with instance_create(x,y,SmallGrenadeBurst)
		{
			isGold = true;
			creator = other.id
			ammo = 2
			time = 2
			team = other.team
			projectileSpeed += 1;
			event_perform(ev_alarm,0)
		}
	break;
	
	
	//HEALTH DISPENSER
	case 401:
		var aimDir = aimDirection+(random(20)-10);
		with instance_create(x+lengthdir_x(8,aimDir),y+lengthdir_y(8,aimDir),HPPickup)
		{
			friction += 0.1;
			//alarm[3] = 5;
			isGettingSucked = false;
			motion_add(aimDir,14);
		}
		snd_play(sndHealthChest);
		wkick = 3;
		BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 3
	break;
	
	
	//GUN GUN
	case 402:
	snd_play_fire(sndGunGun);
	with instance_create(x,y,ThrowWepNoReturn)
	{
		team=other.team;
		motion_add(aimDirection,16);
		scrWeapons()
		wep = scrDecideWep(0,8,0);
		name = wep_name[wep];
		ammo = 0;
		type = wep_type[wep];
		//dmg = 24 + (other.level*2);Retail
		dmg = 30 + (Player.level*2);
		pierce = false;
		sprite_index = wep_sprt[wep]
	}
	with instance_create(x,y,GunGunFire)
	{
		depth = other.depth - 1;
		motion_add(aimDirection+random(60)-30,1.5);
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	break;
	
	//CLUSTER LAUNCHER
	case 403:

	snd_play_fire(sndClusterLauncher)

	with instance_create(x,y,ClusterGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5

	break;
	
	//MISSILE BOMB
	case 404:

	snd_play_fire(sndClusterLauncher)

	with instance_create(x,y,MissileBomb)
	{
		sticky = 0
		motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
		image_angle = direction
		team = other.team
		if Player.skill_got[42]
		{
			ammo = ceil(ammo*Player.betterTail);
			time -= 1;
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5

	break;
	
	//CUBER
	case 405:

	snd_play_fire(sndCuber)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,PlayerSquareBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;
	
	//CUBER RIFLE
	case 406:

	snd_play_fire(sndCuber)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,PlayerSquareBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;
	
	//MORPH-O-LASER
	case 407:
		if Player.skill_got[17] = 1
			snd_play_fire(sndLaserUpg)
		else
			snd_play_fire(sndLaser)
		var aimDir = aimDirection;
		var len = 5 * accuracy;
		
		with instance_create(x,y,MorphLaser)
		{
			image_angle = aimDir+(random(2)-1)*other.accuracy
			team = other.team
			event_perform(ev_alarm,0)
		}

		BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = 4
	break;
	
	//MORPH-O-RIFLE
	case 408:

	snd_play_fire(sndCuber);

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,MorphBullet)
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,18)
	image_angle = direction
	team = other.team
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;
	
	//REDIRECTOR PLASMA GUN
	case 409:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),RedirectorPlasmaBall)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,3)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.7);
		motion_add(aimDirection+180,0.8)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;
	
	//DOUBLE BOUNCER LASER PISTOL
	case 410:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	var aimDir = aimDirection;
	var len = 5 * accuracy;
	with instance_create(x+lengthdir_x(len,aimDir+90),y+lengthdir_y(len,aimDir+90),Laser)
	{image_angle = aimDir+(random(2)-1)*other.accuracy
	team = other.team
	laserhit=3;
	sprite_index=sprBouncingLaser;
	image_yscale -= 0.14
	event_perform(ev_alarm,0)
	}
	with instance_create(x+lengthdir_x(len,aimDir-90),y+lengthdir_y(len,aimDir-90),Laser)
	{image_angle = aimDir+(random(2)-1)*other.accuracy
	team = other.team
	laserhit=3;
	sprite_index=sprBouncingLaser;
	image_yscale -= 0.14
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(5.5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5.5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4.5
	wkick = 4

	break;
	
	//KRAKEN YOYO GUN
	case 411:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,KrakenYoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;

	//LANCE
	case 412:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),LanceShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,7)
		scrMoveContactSolid(aimDirection,1)
	}
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -6

	break;
	
	//LEACHER
	case 413:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,LeacherBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;
	
	//BUBBLER
	case 414:
		snd_play(sndClusterOpen);
		BackCont.shake += 5;
		snd_play(choose(sndWater1,sndWater2),0.1,true);
		var len = 70;
		var am = 8;
		var aimDir = aimDirection;
		var xx = x + lengthdir_x(len,aimDir);
		var yy = y + lengthdir_y(len,aimDir);
		var angstp = 360/am;
		repeat(am)
		{
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			aimDir += angstp;
			xx = x + lengthdir_x(len,aimDir);
			yy = y + lengthdir_y(len,aimDir);
		}

	break;
	
	//BLOOD BUBBLER
	case 415:
		snd_play(sndClusterOpen);
		BackCont.shake += 1;
		snd_play(choose(sndWater1,sndWater2),0.1,true);
		var len = 48;
		var am = 8;
		var aimDir = aimDirection;
		var xx = x + lengthdir_x(len,aimDir);
		var yy = y + lengthdir_y(len,aimDir);
		var angstp = 360/am;
		repeat(am)
		{
			with instance_create(xx,yy,BigBloodBubble)
			{
				motion_add(aimDir,2);
			}
			aimDir += angstp;
			xx = x + lengthdir_x(len,aimDir);
			yy = y + lengthdir_y(len,aimDir);
		}

	break;
	
	//BOUNCER BAZOOKA
	case 416:

	snd_play_fire(sndRocket)

	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 10

	break;
	
	//SUPER TOXIC CANNON
	case 417:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndToxicBoltGas)

	with instance_create(x,y,SuperToxicCannonBall)
	{
	image_angle=aimDirection;
	motion_add(aimDirection+(random(8)-4)*other.accuracy,3)
	}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,6)
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 7

	break;
	
	//SUPER SPIRAL YOYO GUN
	case 418:

	snd_play_fire(sndSuperDiscGun)
	var offset = 0;
	var spd = 5;
	repeat(3)
	{
		with instance_create(x,y,SpiralYoyoBurst)
		{
			creator = other.id
			ammo = 6
			accuracy = other.accuracy;
			angle = aimDirection + offset;
			time = 1
			team = other.team
			projectileSpeed = spd;
			event_perform(ev_alarm,0) 
		}
		spd += 2;
		offset += 20;
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 7

	break;
	
	//SPINNER YOYO GUN
	case 419:

	snd_play_fire(sndDiscgun)
	var aimDir = aimDirection+(random(10)-5)*accuracy;
	with instance_create(x,y,SpinnerYoyo)
	{
		team = other.team;
		var sins = sin(aimDirection);
		if sins > 0
		{
			motion_add(aimDir + 10,8);
			rotation = -400;
		}
		else
		{
			motion_add(aimDir - 10,8);
			rotation = 400;
		}
		image_angle = direction
		oDir = direction;
		owner = other.id
	}
	
	break;
	
	//SUPER SPINNER YOYO GUN
	case 420:

	snd_play_fire(sndSuperDiscGun)
	var aimDir = aimDirection+(random(10)-5)*accuracy;
	var am = 6;
	var angStep = 360/am; 
	repeat(am)
	{
		with instance_create(x,y,SpinnerYoyo)
		{
			team = other.team;
			var sins = sin(aimDirection);
			if sins > 0
			{
				motion_add(aimDir + 10,8);
				rotation = -400;
			}
			else
			{
				motion_add(aimDir - 10,8);
				rotation = 400;
			}
			image_angle = direction
			oDir = direction;
			owner = other.id
		}
		aimDir += angStep;
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;
	
	//YOYO DISPERSE GUN
	case 421:

	snd_play_fire(sndSuperDiscGun)

	with instance_create(x,y,DisperseYoyo)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=2;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 7

	break;
	
	//SUPER LANCE
	case 422:

	//snd_play_fire(choose(sndSword1,sndSword2))
	snd_play_fire(sndBlackSwordMega);
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),LanceShank)
	{
		dmg = 12;
	longarms = 0
	
		longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3.5+longarms)
	image_angle = direction
	team = other.team
	
	image_yscale = 0.1;
	if (longarms != 0)//Long arms effect for this is that it will have an easier time getting past walls
		image_yscale = 0.05;
	var takeMeOut = 40;
		while (!place_meeting(x,y,Wall) && takeMeOut > 0)
		{
			image_xscale += 0.2;
			takeMeOut--;
		}
		var xx = x;
		var yy = y;
		repeat(image_xscale*4)
		{
			instance_create(xx,yy,Dust);
			xx += lengthdir_x(16,image_angle);
			yy += lengthdir_y(16,image_angle);	
		}
		image_yscale = 1;
	}
	wepangle = -wepangle
	motion_add(aimDirection,12)
	BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -8

	break;
	
	//INFESTER
	case 423:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,InfestBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 4

	break;
	
	//WAZER RIFLE
	case 424:
	var um = GetPlayerUltramod()
	if um == ultramods.laserBullet
	{
		with instance_create(x,y,Burst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 3
			time = 2
			aimOffset = 5 * other.accuracy;
			team = other.team
			event_perform(ev_alarm,0) 
		}
		with instance_create(x,y,Burst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 3
			time = 2
			aimOffset = -5 * other.accuracy;
			team = other.team
			alarm[0] = 1;
		}
	}
	else if um == ultramods.laserBolt
	{
		with instance_create(x,y,SplinterBurst2)
		{
			ultramodded = true;
			accuracy = 8*other.accuracy;
			creator = other.id
			ammo = 2
			maxammo = ammo;
			time = 2
			team = other.team
			event_perform(ev_alarm,0) 
		}
		with instance_create(x,y,SplinterBurst2)
		{
			ultramodded = true;
			accuracy = 3*other.accuracy;
			creator = other.id
			ammo = 2
			maxammo = ammo;
			time = 2
			team = other.team
			alarm[0] = 1;
		}
	}
	else
	{
		var exists = false;
		with PlayerWazer
		{
			if owner == other.id
				exists = true;
		}
		if Player.skill_got[42]
			scrActivateTail(hasTailNow);
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			with instance_create(x,y,PlayerWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 11;
				if Player.skill_got[42]
				{
					alarm[0] = ceil(alarm[0]*Player.betterTail);
				}
				owner = other.id;
				camKick = 5;
				camShake = 3;
				wkick = 4;
			}
		}
		else
		{
			with PlayerWazer
			{
				if owner == other.id
				{
					alarm[6] += alarm[0] - 1;
					alarm[0] = 2 + other.wep_load[other.wep];
				}
			}
		}
	}
	break;
	
	//HEAVY BLOOD PISTOL
	case 425:

	snd_play_fire(sndHeavyBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBloodBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 3

	break;
	
	//HEAVY BLOOD RIFLE
	case 426:

	snd_play_fire(sndHeavyBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBloodBullet)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;
	
	//ULTRA ROGUE RIFLE
	case 427:

	with instance_create(x,y,UltraRogueRifleBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//EXPLOSIVE WAZER RIFLE
	case 428:
	var um = GetPlayerUltramod()
	if um == ultramods.laserBullet
	{
		var flip = choose(1,-1);
		with instance_create(x,y,ExplosiveBulletBurst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 3
			time = 2
			aimOffset = 5 * other.accuracy * flip;
			team = other.team
			event_perform(ev_alarm,0) 
		}
		with instance_create(x,y,ExplosiveBulletBurst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 2
			time = 2
			aimOffset = -5 * other.accuracy * flip;
			team = other.team
			alarm[0] = 1;
		}
	}
	else if um == ultramods.laserBolt
	{
		snd_play_fire(sndSplinterGun)

		with instance_create(x,y,ExplosiveSplinter)//5 splinters
		{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
		image_angle = direction
		team = other.team}
		repeat(2)
		{
		with instance_create(x,y,ExplosiveSplinter)
		{motion_add(aimDirection+(random(24)-12)*other.accuracy,20+random(4))
		image_angle = direction
		team = other.team}
		}
		with instance_create(x,y,ExplosiveSplinter)
		{motion_add(aimDirection+(random(14)-7)*other.accuracy,20+random(4))
		image_angle = direction
		team = other.team}
		
		BackCont.viewx2 += lengthdir_x(17,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(17,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 3
		wkick -= 3
	}
	else
	{
		var exists = false;
		with PlayerExplosionWazer
		{
			if owner == other.id
				exists = true;
		}
		if Player.skill_got[42]
			scrActivateTail(hasTailNow);
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			with instance_create(x,y,PlayerExplosionWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 9;
				if Player.skill_got[42]
				{
					alarm[0] = ceil(alarm[0]*Player.betterTail);
				}
				owner = other.id;
				camKick = 5;
				camShake = 3;
				wkick = 4;
			}
		}
		else
		{
			with PlayerExplosionWazer
			{
				if owner == other.id
				{
					alarm[6] += alarm[0] - 1;
					alarm[0] = 2 + other.wep_load[other.wep];
				}
			}
		}
	}
	break;
	
	//SPLINTER STORM
	case 429:
	snd_play(sndSplinterShotgun);
	var aimDir = aimDirection+180;
	with instance_create(x,y,SplinterBurst2)
	{
		accuracy = 12*other.accuracy;
		creator = other.id
		ammo = 13
		maxammo = ammo;
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
	if !skill_got[2]
	{
		motion_add(aimDirection + 180,2)
		scrMoveContactSolid(aimDirection + 180,2)
	}
	BackCont.viewx2 += lengthdir_x(10,aimDir)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDir)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;
	
	//SLUG CANNON
	case 430:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,SlugCannonBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,11+random(2))
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		motion_add(aimDirection + 180,2)
		scrMoveContactSolid(aimDirection + 180,5)
	}
	BackCont.viewx2 += lengthdir_x(34,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(34,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 8

	break;
	
	//ULTRA LANCE
	case 431:

	snd_play_fire(choose(sndSword1,sndSword2))
	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(6+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(6+((Player.skill_got[13]+bettermelee)*20),aimDirection),UltraLanceShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,2)
		scrMoveContactSolid(aimDirection,3)
	}
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -6

	break;
	
	//CHUNKY BLADE GUN
	case 432:

	snd_play_fire(sndSuperDiscGun)

	with instance_create(x,y,ChunkyBlade)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,7)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 5

	break;
	
	//THE DIRECTOR
	case 433:
		snd_play_fire(sndDirector);
		BackCont.shake += 8
		wkick = 5
		wepangle = -wepangle
		repeat(4)
		with instance_create(x,y,Smoke)
		{
			motion_add(aimDirection+(random(10)-5)*other.accuracy,7)
		}
		with projectile
		{
			if typ == 1 || typ == 3 && canBeMoved
			{
				team = other.team;
				if instance_exists(enemy)
				{
					var n = instance_nearest(x,y,enemy);
					direction = point_direction(x,y,n.x,n.y);
				}
				else
					direction = random(360);
				image_angle = direction;
				scrRedirectFx();
				event_user(15);
				speed *= 1.2;
				speed += 1;
			}
			else if typ == 2 && team != other.team 
			{
				instance_create(x,y,Smoke);
				instance_destroy();	
			}
		}
	break;
	
	//ULTRA  BLOOD RIFLE
	case 434:

	snd_play_fire(sndHeavyBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,UltraBloodBullet)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//ULTRA TOXICTHROWER
	case 435:

	if !instance_exists(ToxicSound)
	instance_create(x,y,ToxicSound)
	with instance_create(x,y,UltraToxicBurst)
	{
	creator = other.id
	ammo = 9
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//BOX GUN
	case 436:

		snd_play_fire(sndWaveGun)
		var aimDir = aimDirection+(random(12)-6)*accuracy
		var s = 17.25
		var am = 4;//am*am = 16
		var offsetStep = 8*accuracy;
		var offset = offsetStep*am*0.5;
		var xx = x+lengthdir_x(offset,aimDir-90)+lengthdir_x(offset,aimDir+180);
		var yy = y+lengthdir_y(offset,aimDir-90)+lengthdir_y(offset,aimDir+180);
		var msk = mask_index;
		mask_index = mskBullet2;
			repeat(am)
			{
				var xxx = xx;
				var yyy = yy;
				repeat(am)
				{
					if !place_meeting(xx,yy,Wall)
						with instance_create(xx,yy,Bullet2)
						{
							motion_add(aimDir,s)
							image_angle = direction
							team = other.team
						}
					yy += lengthdir_y(offsetStep,aimDir);
					xx += lengthdir_x(offsetStep,aimDir);
				}
				xx = xxx;
				yy = yyy;
				yy += lengthdir_y(offsetStep,aimDir+90);
				xx += lengthdir_x(offsetStep,aimDir+90);
			}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 9
		wkick = 7

	break;
	
	//BOX SLUGGER
	case 437:

		snd_play_fire(sndSuperSlugger)
		var aimDir = aimDirection+(random(12)-6)*accuracy
		var s = 16
		var am = 4;//am*am = 16
		var offsetStep = 8*accuracy;
		var offset = offsetStep*am*0.5;
		var xx = x+lengthdir_x(offset,aimDir-90)+lengthdir_x(offset,aimDir+180);
		var yy = y+lengthdir_y(offset,aimDir-90)+lengthdir_y(offset,aimDir+180);
		var msk = mask_index;
		mask_index = mskSlug;
			repeat(am)
			{
				var xxx = xx;
				var yyy = yy;
				repeat(am)
				{
					if !place_meeting(xx,yy,Wall)
					with instance_create(xx,yy,Slug)
					{
						motion_add(aimDir,s)
						image_angle = direction
						team = other.team
					}
					yy += lengthdir_y(offsetStep,aimDir);
					xx += lengthdir_x(offsetStep,aimDir);
				}
				xx = xxx;
				yy = yyy;
				yy += lengthdir_y(offsetStep,aimDir+90);
				xx += lengthdir_x(offsetStep,aimDir+90);
			}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 12
		wkick = 8

	break;
	
	//EFFICIENT HEAVY SLUGGER
	case 438:

	snd_play_fire(sndHeavySlugger)

	with instance_create(x,y,HeavySlug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,22)//16
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 20
	wkick = 10

	break;
	
	//LOVE BUBBLER
	case 439:
		snd_play(sndClusterOpen);
		snd_play(choose(sndWater1,sndWater2),0.1,true);
		var len = 82;
		var am = 8;
		var aimDir = aimDirection;
		var xx = x;
		var yy = y + len;
		
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x + len *0.5;
			yy = y + len *0.6;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x - len *0.5;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x + len *0.75;
			yy = y;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x - len *0.75;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x + len;
			yy = y - len *0.5;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x - len;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x + len * 0.8;
			yy = y - len * 1.1;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x - len * 0.8;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x + len * 0.25;
			yy = y - len;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x - len * 0.25;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
			xx = x
			yy = y - len * 0.6;
			aimDir = point_direction(x,y,xx,yy);
			with instance_create(xx,yy,BigBubble)
			{
				motion_add(aimDir,2);
			}
		//Heal chance
		if Player.canHeal && object_index == Player && random(100) < 7.7//7.69% chance
		{
			with instance_create(x,y-8,HealFX)
			{
				sprite_index=sprBloodlust;
			}
			snd_play_2d(sndBloodlustProc);
			var num = 1
			Player.my_health = max(my_health,min(my_health + num,maxhealth));
		    if UberCont.opt_ammoicon
			{
				dir = instance_create(x,y,PopupText)
				dir.mytext = "+"+string(num)
				if my_health = maxhealth
				dir.mytext = "MAX"
				else if my_health > maxhealth
				dir.mytext = "OVER MAX"
				dir.sprt = sprHPIconPickup;
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
		}
	break;
	
	//THE PENETRATOR
	case 440:

	snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,PenetratorBolt)
	{
		motion_add(aimDirection+(random(4)-2)*other.accuracy,18)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 7

	break;
	
	//AUTO PENETRATOR
	case 441:

	snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,PenetratorBolt)
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,18)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(35,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(35,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6

	break;
	
	//FLAME SMG
	case 442:

	snd_play_fire(sndFlameRevolver)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,Bullet1Flame)
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,15)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;
	
	
	//RUSTY SAWED-OFF SHOTGUN
	case 443:

	snd_play_fire(sndSawedOffShotgun)
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection,8+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ShortgunBurst)
	{
		accuracy = 50;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		projectileAmount = 9;
		projectileSpeed += 1;
		event_perform(ev_alarm,0) 
	}
	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2

	break;
	
	//GOLDEN HAND CANNON
	case 444:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HandCannonBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 5

	break;
	
	//HAND CANNON
	case 445:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HandCannonBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 4

	break;
	
	//AUTO HAND CANNON
	case 446:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HandCannonBullet)
	{motion_add(aimDirection+(random(14)-7)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 3

	break;
	
	//AUTO MISSILE LAUNCHER
	case 447:

	with instance_create(x,y,MissileBurst3)
	{
	creator = other.id
	ammo = 2
	time = 5
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//FAT SMART GUN
	case 448:

	snd_play_fire(sndSmartgun);
	snd_play_fire(sndHeavyMachinegun);
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,FatBullet)
	{
	motion_add(aimDirection+(random(12)-6)*other.accuracy,14)

	var target;
	target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

	if instance_exists(target) && target.team != team
	{
	        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
	        {
	            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
	            {
					direction=point_direction(x,y,target.x,target.y)+(random(12)-6)*other.accuracy;
					motion_add(aimDirection+(random(12)-6)*other.accuracy,14)
	            }
	       }
		   else
		   {
				motion_add(aimDirection+(random(12)-6)*other.accuracy,14)   
		   }
       
	}
	else
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,14)	
	}

	image_angle = direction
	team = other.team
	speed = 14;
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3.5
	wkick = 4

	break;
	
	
	//POP WALL
	case 449:
		snd_play_fire(sndEraser);
		snd_play_fire(sndQuadMachinegun);
		var msk = mask_index;
		mask_index = mskBullet1;
		var aimDir = aimDirection+(random(5)-2.5)*accuracy;
		var len = 6+(accuracy*3);
		var bx = x;
		var by = y;
		var xstep = lengthdir_x(len,aimDir+90);
		var ystep = lengthdir_y(len,aimDir+90);
		var count = 0;
		while (!place_meeting(bx,by,Wall) && count < 16 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,Bullet2)
			{
				motion_add(aimDir,14);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		var xstep = lengthdir_x(len,aimDir-90);
		var ystep = lengthdir_y(len,aimDir-90);
		bx = x + xstep;
		by = y + ystep;
		count = 0;
		while (!place_meeting(bx,by,Wall) && count < 16 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,Bullet2)
			{
				motion_add(aimDir,14);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 7

	break;
	
	//POP LASER
	case 450:
		snd_play_fire(sndEraser);
		snd_play_fire(sndUltraPistol);
		var msk = mask_index;
		mask_index = mskBullet1;
		var aimDir = aimDirection+(random(7)-3.5)*accuracy;
		var len = 14+(accuracy*2);
		var xstep = lengthdir_x(len,aimDir);
		var ystep = lengthdir_y(len,aimDir);
		var bx = x;
		var by = y;
		var count = 0;
		while (!place_meeting(bx,by,Wall) && count < 32 || count < 2)
		{
			with instance_create(bx,by,Bullet2)
			{
				motion_add(aimDir,16);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 7

	break;
	
	//JAW CRUSHER
	case 451:
	var aimdir = aimDirection+(random(10)-5*accuracy);
	var offset = 10 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	snd_play_fire(sndSuperSlugger)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}

	with instance_create(x+ldx,y+ldy,Slug)
	{
		motion_add(aimdir,16)
		image_angle = direction
		team = other.team
	}

	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,Slug)
	{
		motion_add(aimdir,16)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//JAW OBLITERATOR
	case 452:
	var aimdir = aimDirection+(random(10)-5*accuracy);
	var offset = 10 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	snd_play_fire(sndSuperSlugger)
	snd_play_fire(sndHeavySlugger)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}

	with instance_create(x+ldx,y+ldy,HeavySlug)
	{
		motion_add(aimdir,14)
		image_angle = direction
		team = other.team
	}

	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,HeavySlug)
	{
		motion_add(aimdir,14)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(18,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;

	//DOUBLE MINI PLASMA RIFLE
	case 453:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaMinigun)
	else
	snd_play_fire(sndPlasmaMinigunUpg)
	
	var aimdir = aimDirection+(random(10)-5*accuracy);
	var offset = 9 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+lengthdir_x(6,aimdir)+ldx,y+lengthdir_y(6,aimdir)+ldy,MiniPlasmaBall)
	{
		motion_add(aimdir,2)
		originalDirection = direction;
		image_angle = direction
		team = other.team
	}
	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+lengthdir_x(6,aimdir)+ldx,y+lengthdir_y(6,aimdir)+ldy,MiniPlasmaBall)
	{
		motion_add(aimdir,2)
		originalDirection = direction;
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//FLAME DIRECTOR JAW ERASER
	case 454:

	snd_play_fire(sndEraser)
	snd_play_fire(sndFireShotgun);
	var aimdir = aimDirection+(random(10)-5*accuracy);
	var offset = 10 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+8,aimdir+90);
	var cldy = y+lengthdir_y(offset+8,aimdir+90);
	snd_play_fire(sndEraser)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,FlameDirectorEraserBurst)
	{
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 16
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+8,aimdir-90);
	cldy = y+lengthdir_y(offset+8,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,FlameDirectorEraserBurst)
	{
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 16
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 6
	break;
	
	//SCYTHE
	case 455:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+hspeed+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),y+vspeed+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),SpinSlash)
	{
	dmg = 10
	speed = other.speed*0.5;
	direction = other.direction;
	longarms = 0
	longarms = Player.skill_got[13]+other.bettermelee
	motion_add(aimDirection,2+(longarms*2));
	image_angle = direction
	image_xscale = 1+(longarms*0.15);
	image_yscale = 1+(longarms*0.15);
	team = other.team
	rotation *= sign(other.wepangle);
	}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(4,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = -5

	break;
	
	//SUPER SCYTHE
	case 456:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+hspeed+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),y+vspeed+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),SpinSlash)
	{
		speed = other.speed*0.5;
		direction = other.direction;
		longarms = 0
		
		longarms = Player.skill_got[13]+other.bettermelee
		motion_add(aimDirection,2+(longarms*2));
		image_angle = direction
		image_xscale = 1+(longarms*0.15);
		image_yscale = 1+(longarms*0.15);
		team = other.team
		rotation *= sign(other.wepangle);
	}
	
	with instance_create(x+hspeed+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),y+vspeed+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),SuperSpinSlash)
	{
		speed = other.speed*0.5;
		direction = other.direction;
		longarms = 0
		
		longarms = Player.skill_got[13]+other.bettermelee
		motion_add(aimDirection,2+(longarms*2));
		image_angle = direction
		image_xscale = 1+(longarms*0.14);
		image_yscale = 1+(longarms*0.14);
		team = other.team
		rotation *= sign(other.wepangle);
	}

	wepangle = -wepangle
	//motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(4,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = -5

	break;
	
	//EXPLOSIVE ASSAULT RIFLE
	case 457:

	with instance_create(x,y,ExplosiveBulletBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//LASER SHOVEL
	case 458:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergySlash)
	{
		dmg = 20;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}
	
	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection-50*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	
	with instance_create(x,y,Laser)
	{image_angle = (aimDirection-50*Player.accuracy)+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection+50*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	
	with instance_create(x,y,Laser)
	{image_angle = (aimDirection+50*Player.accuracy)+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	wepangle = -wepangle
	if !skill_got[2]
	{
		motion_add(aimDirection,6)
		scrMoveContactSolid(aimDirection,5)
	}
	BackCont.viewx2 += lengthdir_x(26,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(26,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -5

	break;
	
	//SPLINTER CRASH
	case 459:

	snd_play_fire(sndSplinterGun)

	var am = 24;
	var angStep = 360/am;
	angStep *= accuracy;
	var angg = aimDirection - (angStep * (am*0.5));
	repeat(am)
	{
		with instance_create(x,y,Splinter)//5 splinters
		{
			motion_add(angg+(random(6)-3)*other.accuracy,20);
			image_angle = direction
			team = other.team
		}
		angg += angStep
	}
	angStep *= 0.5;
	with instance_create(x,y,Splinter)//5 splinters
	{
		motion_add(aimDirection+angStep+(random(6)-3)*other.accuracy,21);
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Splinter)//5 splinters
	{
		motion_add(aimDirection-angStep+(random(6)-3)*other.accuracy,21);
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick += 4

	break;
	
	//BOUNCER CRASH
	case 460:

	snd_play_fire(sndBouncerShotgun)

	var am = 14;
	var angStep = 360/am;
	angStep *= accuracy;
	var angg = aimDirection - (angStep * (am*0.5));
	repeat(am)
	{
		with instance_create(x,y,Bullet3)//5 splinters
		{
			motion_add(angg+(random(8)-4)*other.accuracy,5.5);
			image_angle = direction
			team = other.team
		}
		angg += angStep
	}
	angStep *= 0.5;
	with instance_create(x,y,Bullet3)//5 splinters
	{
		motion_add(aimDirection+angStep+(random(8)-4)*other.accuracy,6);
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Bullet3)//5 splinters
	{
		motion_add(aimDirection-angStep+(random(8)-4)*other.accuracy,6);
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick += 4

	break;
	
	//GYRO INCINERATOR
	case 461:

	snd_play_fire(sndFlamerStart);
	snd_play_fire(sndHeavyNader)

	snd_play_fire(sndGyroBurst)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,GyroIncineratorBurst)
	{
		motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
		team = other.team;
		if Player.skill_got[42]
		{
			alarm[0] = floor(alarm[0]*Player.betterTail - 0.2);
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 6

	break;
	
	//FLAME SPLINTER GUN
	case 462:

	snd_play_fire(sndFlamerStart);
	snd_play_fire(sndSplinterGun)

	with instance_create(x,y,FlameSplinter)//5 splinters
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,FlameSplinterBurst)
	{
		totalAccuracy = 18;
		creator = other.id
		ammo = 5
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;
	
	//FLUGGER
	case 463:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,Flug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//GATLING FLUGGER
	case 464:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,Flug)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;
	
	//HEAVY CUBER
	case 465:

	snd_play_fire(sndHeavyCuber)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,PlayerHeavySquareBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,14)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;
	
	//HEAVY CUBER RIFLE
	case 466:

	snd_play_fire(sndHeavyCuber)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,PlayerHeavySquareBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,14)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;
	
	//BOOM BOOM CANNON
	case 467:

	snd_play_fire(sndFlakCannon);

	with instance_create(x,y,ExplosiveFlakBullet)
	{
		motion_add(aimDirection+(random(10)-5)*other.accuracy,11+random(2))
		image_angle = direction
		team = other.team
		if Player.skill_got[42]
		{
			ammo = ceil(ammo*Player.betterTail);
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(32,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(32,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 7

	break;
	
	//ULTRA MORPH-O-RAY
	case 468:

	if !instance_exists(MorphSound)
	instance_create(x,y,MorphSound)
	with instance_create(x,y,UltraRay)
	{
		team = other.team;
		creator = other.id
		ammo = 4
		time = 3
		team = other.team
	}

	break;
	
	//TOXIC-O-RAY
	case 469:

	if !instance_exists(MorphSound)
	{
		instance_create(x,y,MorphSound)
		snd_play(sndToxicBoltGas);
	}
	with instance_create(x,y,ToxicRay)
	{
		creator = other.id
		ammo = 13
		time = 1
		team = other.team
	}

	break;
	
	//SNOW LINE
	case 470:

	snd_play_fire(sndFrostShot1)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineSnow)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;
	
	//MUCHAS NIEVE
	case 471:
	Sleep(40);
	snd_play_fire(sndFrostShot1);
	snd_play_fire(sndDragonStop);
	snd_play_fire(sndRocket);
	snd_play_fire(sndGoldRocketFly);
	var r = right;
	var t = team;
	with Floor
	{
		if point_distance(x,y,other.x,other.y) < 350
		{
			with instance_create(x+16,y+16,IceFlame)
			{
				motion_add(0,4)
				//image_angle = direction
				team = t
			}
			with instance_create(x+16,y+16,IceFlame)
			{
				motion_add(120,4)
				//image_angle = direction
				team = t
			}
			with instance_create(x+16,y+16,IceFlame)
			{
				motion_add(240,4)
				//image_angle = direction
				team = t
			}
		}
	}
	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;
	
	//ULTRA HEAVY SLUGGER
	case 472:

	snd_play_fire(sndHeavySlugger);
	snd_play_fire(sndUltraShotgun);

	with instance_create(x,y,UltraHeavySlug)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,15)//16
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 22
	wkick = 12
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,8);
		motion_add(aimDirection+180,5)
	}
	break;
	
	//ULTRA BAZOOKA
	case 473:

	snd_play_fire(sndNukeFire);

	with instance_create(x,y,UltraRocket)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,20)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,2);
		motion_add(aimDirection+180,5)
	}
	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 10

	break;
	
	//FRAZER
	case 474:
	if !instance_exists(SnowSound)
		instance_create(x,y,SnowSound)
	with instance_create(x,y,Frazer)
	{
		owner = other.id;
		team = other.team;
		alarm[1] = 20;
		if Player.skill_got[42]
		{
			alarm[1] = ceil(alarm[1]*Player.betterTail);
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0);
	}

	break;
	
	//ACCELERATOR
	case 475:

	snd_play_fire(sndHeavyRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,DistanceScaleBullet)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 3

	break;
	
	//AUTO ACCELERATOR
	case 476:

	snd_play_fire(sndHeavyMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y,DistanceScaleBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.4);
		motion_add(aimDirection+180,0.6)
	}
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4.5

	break;
	
	//HEAVY SLEDGEHAMMER
	case 477:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
	{
	sprite_index=sprVeryHeavySlash;
	dmg = 50//shovel is 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;
	
	//ULTRA LOLLIPOP
	case 478:

	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),UltraBigSlash)
	{
	dmg = 60//energy hammer is 50
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(25,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(25,aimDirection)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = -6

	break;
	
	//FROST SWORD GUN
	case 479:

	snd_play_fire(sndFrostShot2)
	snd_play_fire(sndCrossbow)

	with instance_create(x,y,FrostSwordBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,14)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 2

	break;
	
	//SCYTHE GUN
	case 480:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,ScytheBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;
	
	//EXPLOSION FLAIL
	case 481:

	snd_play_fire(sndFlail)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),ExplosionFlail)
	{
	longarms = 0
	dmg = 16;
	if Player.skill_got[42]
	{
		ammo = ceil(ammo*Player.betterTail);
		scrActivateTail(hasTailNow);
	}
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	
	image_angle = direction
	image_yscale = other.wepflip;//Line up animation with actual holding of weapon
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,2);
		motion_add(aimDirection,0.6)
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = -6

	break;
	
	//BOOM-O-RAY
	case 482:

	if !instance_exists(MorphSound)
	{
		instance_create(x,y,MorphSound)
		snd_play(sndGrenade);
	}
	with instance_create(x,y,BoomRay)
	{
		creator = other.id
		ammo = 3
		time = 3
		team = other.team
	}

	break;
	
	//DISPERSE GRENADE GUN
	case 483:

	snd_play_fire(sndRocket)

	with instance_create(x,y,DisperseGrenade)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=1;
	//event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//GHOST DAGGER
	case 484:

	snd_play_fire(sndGhostShank)

	instance_create(x,y,Smoke)
	instance_create(x,y,Dust)

	repeat(4+irandom(3))
	{
	with instance_create(x,y,GhostEffect)
	motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(4))
	}

	with instance_create(x+lengthdir_x(30+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(30+((Player.skill_got[13]+bettermelee)*20),aimDirection),GhostShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3.5+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x(2+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(2+((Player.skill_got[13]+bettermelee)*20),aimDirection),GhostShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = -7

	break;
	
	//POTSHOT
	case 485:

	with instance_create(x,y,PotShotBurst)
	{
	creator = other.id
	ammo = 5
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//LIGHTNING JACKHAMMER
	case 486:

	with instance_create(x,y,LightningJackhammerBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//ULTRA JACKHAMMER
	case 487:

	with instance_create(x,y,UltraJackhammerBurst)
	{
	creator = other.id
	ammo = 4
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//SHLOGGER
	case 488:

	snd_play_fire(sndSuperSlugger)

	repeat(5)//7
	{
	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 7

	break;
	
	//LIGHTNING YOYO GUN
	case 489:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,LightningYoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,7)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;
	
	//HEAVY POPGUN
	case 490:

	snd_play_fire(sndHeavyPopgun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet2Heavy)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,16+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 3

	break;
	
	//HEAVY POP RIFLE
	case 491:

	with instance_create(x,y,Burst2Heavy)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//SPLINTER MACE
	case 492:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),SpikeSlash)
	{
	dmg = 5
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;
	
	//HEAVY SHOTGUN
	case 493:

	snd_play_fire(sndSuperSlugger)
	
	with instance_create(x,y,Bullet2Heavy)
	{motion_add(aimDirection,14+random(6))
	image_angle = direction
	team = other.team}
	repeat(5)
	{
		with instance_create(x,y,Bullet2Heavy)
		{motion_add(aimDirection+(random(40)-20)*other.accuracy,14+random(6))
		image_angle = direction
		team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 7

	break;
	
	//ULTRA GRENADE LAUNCHER
	case 494:

	snd_play_fire(sndUltraGrenade)

	with instance_create(x,y,UltraGrenade)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;
	
	//SHEEP ON A STICK
	case 495:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),MorphLanceShank)
	{
		if Player.skill_got[17] = 1//laserbrain
		{
		dmg=10+(other.betterlaserbrain)
		}
		else
		dmg = 9
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,8)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -6

	break;
	
	//HEAVY AUTO SHOTGUN
	case 496:

	snd_play_fire(sndSuperSlugger)

	repeat(5)
	{
	with instance_create(x,y,Bullet2Heavy)
	{motion_add(aimDirection+(random(30)-15)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 5

	break;
	
	//SUPER SPLINTER GUN
	case 497:
	with instance_create(x,y,SuperSplinterBurst)
	{
		creator = other.id
		ammo = 5
		maxammo = ammo;
		time = 2;
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3

	break;
	
	//DEVASTATOR
	case 498:

	if Player.skill_got[17] = 1
		snd_play_fire(sndDevastatorUpg)
	else
		snd_play_fire(sndDevastator)

	with instance_create(x,y,Devastator)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	speed = 16;
	if Player.skill_got[17]
		speed *= 0.5;
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break
	
	//ANNIHILATOR
	case 499:

	snd_play_fire(sndBloodCannon)

	with instance_create(x,y,Annihilator)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	speed = 14;
	if Player.ultra_got[16]//Melting doomed
		speed *= 0.5;
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break
	
	//LIGHTNING CANNON
	case 500:

	if Player.skill_got[17] = 1
		snd_play_fire(sndLightningCannonUpg)
	else
		snd_play_fire(sndLightningCannon)

	with instance_create(x,y,LightningCannonBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 5

	break
	
	//REVOLVER
	case 501:

	snd_play_fire(sndFlameRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1Flame)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,14)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6.5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6.5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 2

	break;
	
	//BOW
	case 502:
	with ChargeBow {
		if scrChargeRelease()
		{
			instance_destroy();
		}
	}
	with instance_create(x,y,ChargeBow)
	{
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 6;
		team = other.team
		if Player.skill_got[42]
		{
			chargetime = 2;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0)
	}

	break;
	
	//ULTRA BOW
	case 503:
	with UltraChargeBow {
		if scrChargeRelease()
		{
			instance_destroy();
		}
	}
	with instance_create(x,y,UltraChargeBow)
	{
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 5;
		team = other.team
		if Player.skill_got[42]
		{
			chargetime = 2;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0)
	}

	break;
	
	//ULTRA WAZER RIFLE
	case 504:
	var um = GetPlayerUltramod()
	if um == ultramods.laserBullet
	{
		with instance_create(x,y,UltraBulletBurst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 2
			time = 2
			aimOffset = 5 * other.accuracy;
			team = other.team
			event_perform(ev_alarm,0) 
		}
		with instance_create(x,y,UltraBulletBurst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 2
			time = 2
			aimOffset = -5 * other.accuracy;
			team = other.team
			alarm[0] = 1;
		}
	}
	else if um == ultramods.laserBolt
	{
		with instance_create(x,y,SplinterBurst2)
		{
			ultramodded = true;
			accuracy = 8*other.accuracy;
			creator = other.id
			ammo = 2
			maxammo = ammo;
			time = 3
			team = other.team
			alarm[0] = 1;
		}
		snd_play_fire(sndUltraCrossbow)
		snd_play_fire(sndSplinterGun)

		with instance_create(x,y,UltraSplinter)//4 originally 6 splinters
		{motion_add(aimDirection+(random(6)-3)*other.accuracy,20+random(4))
		image_angle = direction
		team = other.team}
		with instance_create(x,y,UltraSplinter)
		{motion_add(aimDirection+(random(12)-6)*other.accuracy,20+random(4))
		image_angle = direction
		team = other.team}
		/*
		with instance_create(x,y,UltraSplinter)
		{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
		image_angle = direction
		team = other.team}*/
		with instance_create(x,y,UltraSplinter)
		{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
		image_angle = direction
		team = other.team}
		
		BackCont.viewx2 += lengthdir_x(21,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(21,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 7
		wkick -= 6
	}
	else
	{
		var exists = false;
		with PlayerUltraWazer
		{
			if owner == other.id
				exists = true;
		}
		if Player.skill_got[42]
			scrActivateTail(hasTailNow);
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			snd_play_2d(sndUltraLaser,0,true);
			with instance_create(x,y,PlayerUltraWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 9;
				if Player.skill_got[42]
				{
					alarm[0] = ceil(alarm[0]*Player.betterTail);
				}
				owner = other.id;
				camKick = 5;
				camShake = 3;
				wkick = 4;
			}
		}
		else
		{
			with PlayerUltraWazer
			{
				if owner == other.id
				{
					alarm[6] += alarm[0] - 1;
					alarm[0] = 2 + other.wep_load[other.wep];
				}
			}
		}
	}
	break;
	
	//FROST-O-RAY
	case 505:

	if !instance_exists(FrostRaySound)
	{
		instance_create(x,y,FrostRaySound)
	}
	with instance_create(x,y,FrostRay)
	{
		creator = other.id
		ammo = 5
		time = 2
		team = other.team
	}

	break;
	
	//ULTRA SWORD GUN
	case 506:

	snd_play_fire(sndUltraCrossbow)

	with instance_create(x,y,UltraSwordBullet)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4

	break;
	
	//ULTRA SWORD
	case 507:

	snd_play_fire(sndUltraSword)

	instance_create(x,y,Smoke)
	if !skill_got[2]
	scrMoveContactSolid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		sprite_index=sprUltraSlash;
		dmg = 30
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,3+longarms)
		image_angle = direction
		team = other.team
	}
	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -8

	break;
	
	//LASER YOYO GUN
	case 508:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,LaserYoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,8)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;
	
	//EXPLOSIVE BLADE GUN
	case 509:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,ExplosiveBlade)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;
	
	//ULTRA ASSAULT SHOTGUN
	case 510:

	with instance_create(x,y,UltraShotgunBurst)
	{
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//SUPER DISC GUN
	case 511:

	snd_play_fire(sndSuperDiscGun)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,8);
		motion_add(aimDirection+180,2)
	}

	with instance_create(x,y,Disc)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Disc)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Disc)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Disc)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Disc)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//GIANT PANDA STICK
	case 512:

	snd_play_fire(sndFlail)

	instance_create(x,y,Dust)
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,2);
		motion_add(aimDirection,0.5)
	}

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(3+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(3+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
	longarms = 0
	motion_add(aimDirection,2.5+longarms)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = -7

	break;
	
	//ULTRA MEGA LASER V1
	case 513:
	snd_play_fire(sndMegaLaser)
	if Player.skill_got[17] = 1
	snd_play_fire(sndUltraLaserUpg)
	else
	snd_play_fire(sndUltraLaser)
	with instance_create(x,y,LaserWallDestroyer)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	image_yscale +=0.4;
	dmg = 4;
	event_perform(ev_alarm,0)
	}
	if !skill_got[2]
		scrMoveContactSolid(aimDirection + 180, 8);
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//HEAVY SHOVEL
	case 514:

	snd_play_fire(sndShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
	{
	dmg = 30
	sprite_index=sprVeryHeavySlash;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),EnergyHammerSlash)
	{
	dmg = 26
	sprite_index=sprVeryHeavySlash;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),EnergyHammerSlash)
	{
	dmg = 26
	sprite_index=sprVeryHeavySlash;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -5

	break;
	
	//SUPER FLUGGER
	case 515:

	snd_play_fire(sndSuperSlugger)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,8);
		motion_add(aimDirection+180,2)
	}

	with instance_create(x,y,Flug)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Flug)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Flug)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Flug)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Flug)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 8

	break;
	
	//SUPER PENETRATOR
	case 516:

	snd_play_fire(sndSuperCrossbow)

	with instance_create(x,y,Bolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection+10*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bolt)
	{motion_add(aimDirection-10*other.accuracy,18)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,2)
	}

	BackCont.viewx2 += lengthdir_x(55,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(55,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 8

	break;
	
	//CLUB
	case 517:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)
	if !skill_got[2]
	scrMoveContactSolid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
		image_xscale -= 0.15;
		image_yscale -= 0.15;
		dmg = 6;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(13,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -7

	break;
	
	//SEEKER MACHINEGUN
	case 518:

	snd_play_fire(sndSeekerPistol)
	var xx = x + lengthdir_x(4,aimDirection);
	var yy = y + lengthdir_y(4,aimDirection);
	with instance_create(xx,yy,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,3+random(3))
	image_angle = direction
	team = other.team}
	/*
	with instance_create(x,y,SeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}*/


	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//DOUBLE SEEKER MACHINEGUN
	case 519:

	snd_play_fire(sndSeekerShotgun)
	var xx = x + lengthdir_x(4,aimDirection);
	var yy = y + lengthdir_y(4,aimDirection);
	with instance_create(xx,yy,SeekerBolt)
	{motion_add(aimDirection+(random(20)-30)*other.accuracy,7)
	image_angle = direction
	team = other.team}
	with instance_create(xx,yy,SeekerBolt)
	{motion_add(aimDirection+(random(20)+10)*other.accuracy,7)
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;
	
	//BULLET CRASH
	case 520:

	snd_play_fire(sndQuadMachinegun)

	var am = 16;
	var angStep = 360/am;
	angStep *= accuracy;
	var angg = aimDirection - (angStep * (am*0.5));
	repeat(am)
	{
		with instance_create(x,y,Bullet1)
		{
			motion_add(angg+(random(8)-4)*other.accuracy,15);
			image_angle = direction
			team = other.team
		}
		angg += angStep
	}
	angStep *= 0.5;
	with instance_create(x,y,Bullet1)
	{
		motion_add(aimDirection+angStep+(random(8)-4)*other.accuracy,16);
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,Bullet1)
	{
		motion_add(aimDirection-angStep+(random(8)-4)*other.accuracy,16);
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//SUPER CHUNKY BLADE GUN
	case 521:

	snd_play_fire(sndSuperDiscGun)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,3)
	}

	with instance_create(x,y,ChunkyBlade)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ChunkyBlade)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ChunkyBlade)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ChunkyBlade)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,ChunkyBlade)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//SWARM MINIGUN
	case 522:

	snd_play(sndSwarmRapid,0.2,true,false,1,false,false,0.7);

	with instance_create(x,y,SwarmBolt)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,7)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.3);
		motion_add(aimDirection+180,0.3)
	}
	BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3.5

	break;
	
	//LIGHTNING STRIKER
	case 523:

	with instance_create(x,y,LightningBurst)
	{
	creator = other.id
	ammo = 3
	time = 4
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//ULTRA LIGHTNING STRIKER
	case 524:

	with instance_create(x,y,UltraLightningBurst)
	{
	creator = other.id
	ammo = 4
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//MUCHAS RAYOS
	case 525:
	Sleep(50);
	snd_play_fire(sndLightningCannonUpg);
	var r = right;
	var t = team;
	var i = 0.1;
	with Floor
	{
		
		if object_index != FloorExplo && point_distance(x,y,other.x,other.y) < 350
		{
			with instance_create(x,y,Lightning)
			{
				dmg -= 1;
				image_angle = random(360);
				accuracy = 60;
				branch = 40;
				iframeskip = max(0,iframeskip-0.04);
				team = 2
				ammo = 5;//24
				alarm[0] = ceil(i);
				with instance_create(x,y,LightningSpawn)
				{
					alarm[0] = other.alarm[0];
					image_angle = other.image_angle;
					image_speed = 0;
					visible = false;
				}
			}
			i += 0.1;
		}
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 10

	break;
	
	//INFINITY JACKHAMMER
	case 526:

	with instance_create(x,y,SawBurst)
	{
	creator = other.id
	ammo = 12
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//GOLDEN NUKE LAUNCHER
	case 527:

	snd_play_fire(sndGoldNukeFire);

	with instance_create(x,y,Nuke)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
		sprite_index = sprGoldNuke;
		snd = sndGoldRocketFly;
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(41,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(41,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 11

	break;
	
	//SHOVEL CRASH
	case 528:

	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)
	//6 slashes
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 16
		sprite_index = sprVeryHeavySlash
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),Slash)
	{
		dmg = 12
		sprite_index = sprHeavySlash
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+50*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Slash)
	{
		dmg = 12
		sprite_index = sprHeavySlash
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-50*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Slash)
	{
		dmg = 8
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-120*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Slash)
	{
		dmg = 8
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+120*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
		dmg = 6;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+choose(180*other.accuracy,-180*other.accuracy),2+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = -5

	break;
	
	//LIGHTNING CRASH
	case 529:
	if Player.skill_got[17] = 1
		snd_play_fire(sndLightningCannonUpg)
	else
		snd_play_fire(sndLightningCannon)

	var am = 12;
	var angStep = 360/am;
	angStep *= accuracy;
	var angg = aimDirection - (angStep * (am*0.5));
	repeat(am)
	{
		with instance_create(x,y,Lightning)
		{image_angle = angg;
			iframeskip = max(0,iframeskip-0.04);
			accuracy = 40;
			branch = 100;
			team = other.team
			ammo = 16;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}
		angg += angStep
	}
	angStep *= 0.5;
	with instance_create(x,y,Lightning)
	{
		image_angle = aimDirection+angStep+(random(6)-3)*other.accuracy;
		accuracy += 10;
		branch = 60;
		iframeskip = max(0,iframeskip-0.04);
		team = other.team
		ammo = 24;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
	with instance_create(x,y,Lightning)
	{
		image_angle = aimDirection-angStep+(random(6)-3)*other.accuracy;
		accuracy += 10;
		branch = 60;
		iframeskip = max(0,iframeskip-0.04);
		team = other.team
		ammo = 24;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick += 4

	break;
	
	//ULTRA HEAVY REVOLVER
	case 530:
	snd_play_fire(sndHeavyMachinegun)
	snd_play_fire(sndUltraPistol)

	repeat(2){
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	}

	with instance_create(x,y,Bullet4Heavy)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3


	break;
	
	//COFFEE CANNON
	case 531:

	snd_play_fire(sndHeavyMachinegun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y+4,CoffeeBullet)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	motion_add(direction,4);
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;
	
	//SUPER BOUNCER BAZOOKA
	case 532:

	snd_play_fire(sndSuperBazooka)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,4)
	}

	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,3)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,3)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,3)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,3)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,3)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 8

	break;
	
	//SUPER HEAVY SLUGGER
	case 533:

	snd_play_fire(sndSuperSlugger)

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,16);
		motion_add(aimDirection+180,6)
	}

	with instance_create(x,y,HeavySlug)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,15)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavySlug)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,15)//18
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavySlug)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,15)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavySlug)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,15)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavySlug)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,15)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 18
	wkick = 8

	break;
	
	//SUPER GYRO BURSTER
	case 534:

	snd_play_fire(sndHeavyNader);

	snd_play_fire(sndGyroBurst)

	
	with instance_create(x,y,GyroBurst)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	team = other.team}
	with instance_create(x,y,GyroBurst)
	{motion_add(aimDirection+10*other.accuracy+(random(8)-4)*other.accuracy,4)//18
	team = other.team}
	with instance_create(x,y,GyroBurst)
	{motion_add(aimDirection+20*other.accuracy+(random(8)-4)*other.accuracy,4)
	team = other.team}
	with instance_create(x,y,GyroBurst)
	{motion_add(aimDirection-10*other.accuracy+(random(8)-4)*other.accuracy,4)
	team = other.team}
	with instance_create(x,y,GyroBurst)
	{motion_add(aimDirection-20*other.accuracy+(random(8)-4)*other.accuracy,4)
	team = other.team}
	
	if Player.skill_got[42]
		with GyroBurst
		{
			alarm[0] = floor(alarm[0]*Player.betterTail - 0.2);
			scrActivateTail(hasTailNow);
		}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 4

	break;
	
	//LASER CRASH
	case 535:

	if Player.skill_got[17] = 1
		snd_play_fire(sndLaserUpg)
	else
		snd_play_fire(sndLaser)

	var am = 6;
	var angStep = 360/am;
	angStep *= accuracy;
	var angg = aimDirection - (angStep * (am*0.5));
	
	with instance_create(x,y,Laser)
	{image_angle = aimDirection+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}
	
	repeat(am)
	{
		with instance_create(x,y,Laser)//5 splinters
		{
			image_angle = angg+(random(2)-1)*other.accuracy
			team = other.team
			event_perform(ev_alarm,0)
		}
		angg += angStep
	}
	angStep *= 0.5;
	with instance_create(x,y,Laser)//5 splinters
	{
		image_angle = aimDirection-angStep+(random(2)-1)*other.accuracy
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Laser)//5 splinters
	{
		image_angle = aimDirection-angStep+(random(2)-1)*other.accuracy
		team = other.team
		event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick += 4

	break;
	
	//SEEKER CANNON
	case 536:

	snd_play_fire(sndSeekerShotgun)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),SeekerBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,8)
	image_angle = direction
	team = other.team
	fireRotation = direction;}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,5)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;
	
	//SUPER SEEKER CANNON
	case 537:

	snd_play_fire(sndSeekerCannon)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),SuperSeekerBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,8)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,16);
		motion_add(aimDirection+180,6)
	}
	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;
	
	//SUPER BLOOD CANNON
	case 538:

	snd_play_fire(sndBloodCannon);

	with instance_create(x,y,SuperBloodCannonBall)
	{
	image_angle=random(360);
	motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,15);
		motion_add(aimDirection+180,5)
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;
	
	//HEAVY BLOOD BULLET SHOTGUN
	case 539:

	snd_play_fire(sndSlugger)
	snd_play_fire(sndBloodHammer);

	repeat(7)
	{
		with instance_create(x,y,HeavyBloodBullet)
		{motion_add(aimDirection+(random(32)-16)*other.accuracy,12+random(6))
		image_angle = direction
		team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;
	
	//MISSILE CANNON
	case 540:

	snd_play_fire(sndNukeFire)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),MissileBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,12)
	image_angle = direction
	team = other.team
	fireRotation = direction;}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,5)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//SUPER MISSILE CANNON
	case 541:

	snd_play_fire(sndSuperBazooka)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),SuperMissileBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,18);
		motion_add(aimDirection+180,6)
	}
	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;
	
	//KRAKEN CANNON
	case 542:

	snd_play_fire(sndNukeFire)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),KrakenBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team
	fireRotation = direction;}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,5)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//SUPER KRAKEN CANNON
	case 543:

	snd_play_fire(sndSuperBazooka)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),SuperKrakenBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,6)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,15);
		motion_add(aimDirection+180,6)
	}
	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;
	
	//BOWLING BALL LAUNCHER
	case 544:

	snd_play_fire(sndNukeFire)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),BowlingBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team
	fireRotation = direction;}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,4)
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//SUPER LIGHTNING CROSSBOW
	case 545:

	snd_play_fire(sndSuperCrossbow)
	altFire = !altFire;
	if altFire
	{
		wep_type[545] = 3;
	}
	else
	{
		wep_type[545] = 5;
	}
	with instance_create(x,y,LightningBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LightningBolt)
	{motion_add(aimDirection+5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LightningBolt)
	{motion_add(aimDirection-5*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LightningBolt)
	{motion_add(aimDirection+10*other.accuracy,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LightningBolt)
	{motion_add(aimDirection-10*other.accuracy,24)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,10);
		motion_add(aimDirection+180,4)
	}

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 8

	break;
	
	//SPLIT SEEKER PISTOL
	case 546:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SplitSeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-6*other.accuracy,4+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SplitSeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+6*other.accuracy,4+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;
	
	//BLOOD SHORTGUN
	case 547:

	snd_play_fire(sndSawedOffShotgun)
	with instance_create(x,y,BloodShortgunBurst)
	{
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 1

	break;
	
	//BLOOD HAMMER
	case 548:

	snd_play_fire(sndBloodHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),BloodSlashRetail)
	{
		owner = other.id;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,2);
		motion_add(aimDirection,6)
	}
	BackCont.viewx2 += lengthdir_x(13,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -4

	break;
	
	//HEAVY BLOOD HAMMER
	case 549:

	snd_play_fire(sndBloodHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),HeavyBloodSlash)
	{
		owner = other.id;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(15,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = -5

	break;
	
	//EXPLOSIVE MINIGUN
	case 550:

	snd_play_fire(sndMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y,Bullet1Explosive)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.8);
		motion_add(aimDirection+180,0.6)
	}
	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//O
	case 551:

	snd_play_fire(sndOFire)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,BulletO)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,14)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 4

	break;
	
	//SUPER WRONG DIRECTION
	case 552:

	snd_play_fire(sndSuperCrossbow)
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,10);
		motion_add(aimDirection,4)
	}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+180,24)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-157.5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+157.5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-135*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+135*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+112.5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-112.5*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection+90*other.accuracy,18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyBolt)
	{motion_add(aimDirection-90*other.accuracy,18)
	image_angle = direction
	team = other.team}

	motion_add(aimDirection,2.5)

	BackCont.viewx2 += lengthdir_x(60,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 8

	break;
	
	//BULLET SHOVEL
	case 553:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	dmg = 10
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),Slash)
	{
	dmg = 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Slash)
	{
	dmg = 8
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}


	with instance_create(x,y,Burst)
	{
		creator = other.id
		ammo = 4
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,Burst)
	{
		aimOffset = 60*Player.accuracy;
		creator = other.id
		ammo = 4
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Burst)
	{
		aimOffset = -60*Player.accuracy;
		creator = other.id
		ammo = 4
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}


	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;
	
	//TRIPLE ASSAULT RIFLE
	case 554:

	with instance_create(x,y,Burst)
	{
		aimOffset = -15*Player.accuracy;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		shake = 1.5;
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,Burst)
	{
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		shake = 1.5;
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,Burst)
	{
		aimOffset = 15*Player.accuracy;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		shake = 1.5;
		event_perform(ev_alarm,0) 
	}

	break;
	
	//SNAKE GUN
	case 555:

	with instance_create(x,y,Shell)
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))
	if !instance_exists(SnakeBurst)
		snd_play_fire(sndScorpionFireStart);
	with instance_create(x,y,SnakeBurst)
	{
	creator = other.id
	ammo = 7
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//ELIMINATOR
	case 556:

	snd_play_fire(sndSuperSplinterGun)

	with instance_create(x,y,Eliminator)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	speed = 12;
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break
	
	//HEAVY DOUBLE SHOTGUN
	case 557:

	snd_play_fire(sndSuperSlugger)
	snd_play_fire(sndDoubleShotgun)
	with instance_create(x,y,HeavyShotgunBurst)
	{
		alarm[1] = 2;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}
	repeat(14)
	{
	with instance_create(x,y,Bullet2Heavy)
	{motion_add(aimDirection+(random(50)-25)*other.accuracy,14+random(6))
	image_angle = direction
	team = other.team}
	}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,2);
		motion_add(aimDirection+180,2)
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 8

	break;
	
	//DOUBLE ACCELERATOR
	case 558:

	snd_play_fire(sndHeavyRevolver)
	
	repeat(2)
	with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	
	var aimdir = aimDirection+(random(10)-5*accuracy);
	var offset = 8 * accuracy;
	var ldx = lengthdir_x(offset,aimdir+90);
	var ldy = lengthdir_y(offset,aimdir+90);
	var cldx = x+lengthdir_x(offset+6,aimdir+90);
	var cldy = y+lengthdir_y(offset+6,aimdir+90);
	snd_play_fire(sndEraser)
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,DistanceScaleBullet)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,12)
	image_angle = direction
	team = other.team}
	ldx = lengthdir_x(offset,aimdir-90);
	ldy = lengthdir_y(offset,aimdir-90);
	cldx = x+lengthdir_x(offset+6,aimdir-90);
	cldy = y+lengthdir_y(offset+6,aimdir-90);
	if (collision_line(x,y,cldx,cldy,Wall,false,false) > 0)
	{
		ldx = 0;
		ldy = 0;
	}
	with instance_create(x+ldx,y+ldy,DistanceScaleBullet)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,12)
	image_angle = direction
	team = other.team}
	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4

	break;

	//ASSAULT SLUGGER
	case 559:

	with instance_create(x,y,FlugBurst)
	{
	creator = other.id
	ammo = 3
	time = 3
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//SPEAR LAUNCHER
	case 560:

	snd_play_fire(sndSpear)

	with instance_create(x,y,Spear)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,20)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 4

	break;
	
	//SPLINTER SPEAR LAUNCHER
	case 561:

	snd_play_fire(sndHeavySpear)

	with instance_create(x,y,SplinterSpear)
	{
		motion_add(aimDirection+(random(4)-2)*other.accuracy,22)
		image_angle = direction
		team = other.team
		if Player.skill_got[42]
		{
			ammo = ceil(ammo*Player.betterTail);
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(34,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(34,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//AUTO SPEAR LAUNCHER
	case 562:

	snd_play_fire(sndHeavySpear)

	with instance_create(x,y,Spear)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 4

	break;
	
	//SUPER ELECTRO CANNON
	case 563:
		if Player.skill_got[17] = 1
		snd_play_fire(sndPlasmaBigUpg)
		else
		snd_play_fire(sndPlasmaBig)


		with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBallHuge)
		{
		motion_add(aimDirection+(random(8)-4)*other.accuracy,2.5)
		image_angle = direction
		team=other.team;

		with instance_create(x,y,ElectroBallSpawn)
		{motion_add(aimDirection+(random(8)-4),1)
		image_angle = direction}

		}

		Sleep(10);
		if !skill_got[2]
		{
			scrMoveContactSolid(aimDirection + 180,10);
			motion_add(aimDirection+180,5)
		}
		BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 12
		wkick = 7
	break;
	
	//TOXIC ASSAULT RIFLE
	case 564:

	with instance_create(x,y,ToxicBulletBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//TOXIC MINIGUN
	case 565:

	snd_play_fire(sndToxicMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y,Bullet1Toxic)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.4);
		motion_add(aimDirection+180,0.5)
	}
	BackCont.viewx2 += lengthdir_x(6.5,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6.5,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//TOXIC WAZER RIFLE
	case 566:
	var um = GetPlayerUltramod()
	if um == ultramods.laserBullet
	{
		var flip = choose(1,-1);
		with instance_create(x,y,ToxicBulletBurst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 3
			time = 2
			aimOffset = 5 * other.accuracy * flip;
			team = other.team
			event_perform(ev_alarm,0) 
		}
		with instance_create(x,y,ToxicBulletBurst)
		{
			ultramodded = true;
			creator = other.id
			ammo = 2
			time = 2
			aimOffset = -5 * other.accuracy * flip;
			team = other.team
			alarm[0] = 1;
		}
	}
	else if um == ultramods.laserBolt
	{
		snd_play_fire(sndSplinterGun)

		with instance_create(x,y,Splinter)//5 splinters
		{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
			isGaseous = true;
			alarm[11] = 0;
		sprite_index = sprToxicSplinter;
		trailColour = make_colour_rgb(138,204,61);
		image_angle = direction
		team = other.team}
		repeat(2)
		{
		with instance_create(x,y,Splinter)
		{motion_add(aimDirection+(random(24)-12)*other.accuracy,20+random(4))
			isGaseous = true;
			alarm[11] = 0;
		sprite_index = sprToxicSplinter;
		trailColour = make_colour_rgb(138,204,61);
		image_angle = direction
		team = other.team}
		}
		with instance_create(x,y,Splinter)
		{motion_add(aimDirection+(random(14)-7)*other.accuracy,20+random(4))
			isGaseous = true;
			alarm[11] = 0;
		sprite_index = sprToxicSplinter;
		trailColour = make_colour_rgb(138,204,61);
		image_angle = direction
		team = other.team}
		
		BackCont.viewx2 += lengthdir_x(17,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(17,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 3
		wkick -= 3
	}
	else 
	{
		var exists = false;
		with PlayerToxicWazer
		{
			if owner == other.id
				exists = true;
		}
		if Player.skill_got[42]
			scrActivateTail(hasTailNow);
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			with instance_create(x,y,PlayerToxicWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 9;
				if Player.skill_got[42]
				{
					alarm[0] = ceil(alarm[0]*Player.betterTail);
				}
				owner = other.id;
				camKick = 5;
				camShake = 3;
				wkick = 4;
			}
		}
		else
		{
			with PlayerToxicWazer
			{
				if owner == other.id
				{
					alarm[6] += alarm[0] - 1;
					alarm[0] = 2 + other.wep_load[other.wep];
				}
			}
		}
	}
	break;
	
	//GOLDEN BOW
	case 567:
	with ChargeBow {
		if scrChargeRelease()
		{
			instance_destroy();
		}
	}
	with instance_create(x,y,ChargeBow)
	{
		boltSprite = sprGoldBolt;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 5;//6
		team = other.team;
		if Player.skill_got[42]
		{
			chargetime = 2;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0)
	}

	break;
	
	//ULTRA SAWED-OFF SHOTGUN
	case 568:
	snd_play_fire(sndUltraShotgun)
	snd_play_fire(sndSawedOffShotgun)
	with instance_create(x,y,Bullet5)
	{motion_add(aimDirection,11+random(6))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,UltraShortgunBurst)
	{
		accuracy = 50;
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		projectileAmount = 9;
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3

	break;
	
	//SPLASMA CANNON
	case 569:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigUpg)
	else
	snd_play_fire(sndPlasmaBig)

	with instance_create(x,y,SplasmaBig)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,8)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,12);
		motion_add(aimDirection+180,4)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 10
	resetSpeed=false;

	break;
	
	//SPLASMA GUN
	case 570:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	with instance_create(x,y,SplasmaBall)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,8)
		sdelay = 4;
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5
	resetSpeed=false;

	break;
	
	//SUPER HEAVY SHOTGUN
	case 571:

	snd_play_fire(sndSuperSlugger)
	snd_play_fire(sndDoubleShotgun)
	with instance_create(x,y,SuperHeavyShotgunBurst)
	{
		alarm[1] = 2;
		creator = other.id
		ammo = 4
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}
	/*
	repeat(60)
	{
		with instance_create(x,y,Bullet2Heavy)
		{motion_add(aimDirection+(random(80)-40)*other.accuracy,14+random(14))
		image_angle = direction
		team = other.team}
	}*/

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,2);
		motion_add(aimDirection+180,8)
	}

	BackCont.viewx2 += lengthdir_x(18,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 18
	wkick = 9

	break;
	
	//TRIPLE HEAVY ASSAULT RIFLE
	case 572:
	
	with instance_create(x,y,HeavyBurst)
	{
		aimOffset = -15*Player.accuracy;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,HeavyBurst)
	{
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,HeavyBurst)
	{
		aimOffset = 15*Player.accuracy;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;
	
	//FIRE BOMB LAUNCHER
	case 573:

	snd_play_fire(sndHeavyNader)

	with instance_create(x,y,FireBomb)
	{
	sticky = 0
	motion_add(aimDirection+(random(8)-4)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 7

	break;
	
	//EVERYTHING LINE
	case 574:

	snd_play_fire(sndFrostShot1)
	snd_play_fire(sndBloodLauncher)
	snd_play_fire(sndHyperLauncher)
	with instance_create(x,y,LineSnow)
	{
	direction = aimDirection-(40+(random(2)-1))*other.accuracy
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LineGrenade)
	{
	direction = aimDirection-(20+(random(2)-1))*other.accuracy
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LineBlood)
	{
	direction = aimDirection+(random(2)-1)*other.accuracy
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LineToxic)
	{
	direction = aimDirection+(20+(random(2)-1))*other.accuracy
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LineFire)
	{
	direction = aimDirection+(40+(random(2)-1))*other.accuracy
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;
	
	//HEAVY POP BLADE GUN
	case 575:

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,BladeHeavyPopShooter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 4

	break;
	
	//SUPER BOW
	case 576:
	with ChargeBow {
		if scrChargeRelease()
		{
			instance_destroy();
		}
	}
	if Player.skill_got[42]
	{
		scrActivateTail(hasTailNow);	
	}
	with instance_create(x,y,ChargeBow)
	{
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team;
		if Player.skill_got[42]
		{
			chargetime = 3;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
		}
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		bowOffset = 5;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team;
		if Player.skill_got[42]
		{
			chargetime = 3;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
		}
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		canShake = false;
		bowOffset = -5;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team;
		if Player.skill_got[42]
		{
			chargetime = 3;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
		}
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		canShake = false;
		bowOffset = 10;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team;
		if Player.skill_got[42]
		{
			chargetime = 3;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
		}
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		bowOffset = -10;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team;
		if Player.skill_got[42]
		{
			chargetime = 3;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				chargetime = 1;
				rate = maxcharge;
				maxcharge++;
			}
		}
		event_perform(ev_alarm,0)
	}

	break;
	
	//HEAVY BULLET SWORD
	case 577:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		sprite_index = sprHeavySlash;
	dmg = 16
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}


	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}


	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;
	
	//AUTO SPLINTER SPEAR LAUNCHER
	case 578:

	snd_play_fire(sndHeavySpear)

	with instance_create(x,y,SplinterSpear)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,23)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(30,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//TRIPLE VAN CANNON
	case 579:
	
		snd_play_fire(sndPopgun);
		snd_play_fire(sndPlasmaHit);
		
		with instance_create(x,y,VanCannon)
		{
			direction = aimDirection+(random(16)-8)*other.accuracy;
			image_angle = direction;
			team = other.team;
		}
		var offset = 40 + accuracy*10;
		var ldx = lengthdir_x(offset,aimDirection+90);
		var ldy = lengthdir_y(offset,aimDirection+90);
		with instance_create(x+ldx,y+ldy,VanCannon)
		{
			direction = aimDirection+(random(16)-8)*other.accuracy;
			image_angle = direction;
			team = other.team;
		}
		ldx = lengthdir_x(offset,aimDirection-90);
		ldy = lengthdir_y(offset,aimDirection-90);
		if audio_is_playing(sndVanWarning)
				audio_stop_sound(sndVanWarning);
		with instance_create(x+ldx,y+ldy,VanCannon)
		{
			direction = aimDirection+(random(16)-8)*other.accuracy;
			image_angle = direction;
			team = other.team;
		}
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 50
		wkick = 10
	break;
	
	//TOXIC LAUNCHER
	case 580:

	snd_play_fire(sndToxicLauncher)

	with instance_create(x,y,ToxicGrenade)
	{
	sticky = 1
	motion_add(aimDirection+(random(6)-3)*other.accuracy,11)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;
	
	//HEAVY TOXIC LAUNCHER
	case 581:

	snd_play_fire(sndHeavyNader);
	snd_play_fire(sndToxicLauncher);

	with instance_create(x,y,HeavyToxicGrenade)
	{
	sticky = 1
	motion_add(aimDirection+(random(6)-3)*other.accuracy,10)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 6

	break;
	
	//ULTRA HEAVY TRIPLE MACHINEGUN
	case 582:

	snd_play_fire(sndTripleMachinegun)
	snd_play_fire(sndHeavyMachinegun)
	snd_play_fire(sndUltraShotgun)
	
	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet4Heavy)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet4Heavy)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet4Heavy)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8
	break;
	
	//O O O
	case 583:

	snd_play_fire(sndTripleMachinegun)
	snd_play_fire(sndOFire)
	
	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,BulletO)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,14)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BulletO)
	{motion_add(aimDirection+15*other.accuracy+(random(6)-3)*other.accuracy,14)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BulletO)
	{motion_add(aimDirection-15*other.accuracy+(random(6)-3)*other.accuracy,14)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(18,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 6
	break;
	
	//SUPER LASER CANNON
	case 584:

	snd_play_fire(sndLaserCannonCharge)
	
	with instance_create(x,y,SuperLaserCannon)
	{
	creator = other.id
	ammo = 8+(Player.skill_got[17]+other.betterlaserbrain)*2
	time = 1
	team = other.team
	alarm[0] = 10//15 originally
	alarm[1] = alarm[0] + ammo*time;
		if Player.skill_got[42]
		{
			alarm[0] = max(1,alarm[0]*0.25);
			if Player.ultra_got[97] && !Player.altUltra
				alarm[0] = 1;
		}
	}

	break;
	
	//AUTO GRENADE RIFLE
	case 585:

	snd_play_fire(sndGrenadeRifle);

	with instance_create(x,y,SmallGrenadeBurst)
	{
	creator = other.id
	projectileSpeed = 12;
	ammo = 3
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//SUPER CLUSTER LAUNCHER
	case 586:
	snd_play_fire(sndHeavyNader);
	snd_play_fire(sndClusterLauncher);

	with instance_create(x,y,SuperClusterGrenade)
	{
	sticky = 0;
	motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(18,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 5

	break;
	
	//RADIATION GENERATOR
	case 587:
		snd_play_fire(sndRadMod);
		snd_play_fire(sndUltraGrenade);
		with instance_create(x,y,BigRad)
		{
			motion_add(aimDirection+(random(30)-15)*other.accuracy,5)
		}
		repeat(14 + (Player.skill_got[17] * 6))
			with instance_create(x,y,Rad)
			{
				motion_add(aimDirection+(random(30)-15)*other.accuracy,4+random(4))
			}
		wkick = 3;
		BackCont.viewx2 += lengthdir_x(5,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(5,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 3
	break;
	
	//SHOTGUN LANCE
	case 588:

	snd_play_fire(sndShotgun)
	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),LanceShank)
	{
	longarms = 0
	dmg = 10;
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3.5+longarms)
	image_angle = direction
	team = other.team}
	

	repeat(4)
	{
		with instance_create(x,y,Bullet2)
		{motion_add(aimDirection+(random(20)-30)*other.accuracy,13+random(6))
		image_angle = direction
		team = other.team}
	}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+6*other.accuracy,15)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-6*other.accuracy,15)
	image_angle = direction
	team = other.team}
	repeat(4)
	{
		with instance_create(x,y,Bullet2)
		{motion_add(aimDirection+(random(20)+10)*other.accuracy,13+random(6))
		image_angle = direction
		team = other.team}
	}

	wepangle = -wepangle
	motion_add(aimDirection,8)
	BackCont.viewx2 += lengthdir_x(16,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -6

	break;
	
	//GOLDEN KRAKEN PISTOL
	case 589:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodLauncher);

	snd_play_fire(choose(sndWater1,sndWater2) );


	with instance_create(x,y,Tentacle)
	{image_angle = aimDirection+(random(30)-15)*other.accuracy
	creator=other.id;
	team = other.team
	ammo = 12
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}

	repeat(4){
	    with instance_create(x,y,FishBoost)
	    {
	    motion_add( aimDirection+random(60)-30,2+random(4) );
	    }}

	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;
	
	//TERMITE INJECTOR
	case 590:

	snd_play_fire(choose(sndSword1,sndSword2))
	snd_play(sndMeatExplo);

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),InfestSlash)
	{
		owner = other.id;
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(13,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -4

	break;
	
	//ENERGY LANCE
	case 591:

	if Player.skill_got[17] = 1
		snd_play_fire(sndEnergySwordUpg)
	else
		snd_play_fire(sndEnergySword)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),EnergyLanceShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,2.5)
	BackCont.viewx2 += lengthdir_x(18,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;
	
	//ENERGY SCYTHE
	case 592:

	if Player.skill_got[17] = 1
		snd_play_fire(sndEnergySwordUpg)
	else
		snd_play_fire(sndEnergySword)

	instance_create(x,y,Dust)

	with instance_create(x+hspeed,y+vspeed,EnergySpinSlash)
	{
	speed = other.speed*0.5;
	direction = other.direction;
	longarms = 0
	
	longarms = Player.skill_got[13]+other.bettermelee
	image_angle = direction
	image_xscale = 1+(longarms*0.12);
	image_yscale = 1+(longarms*0.12);
	team = other.team
	rotation *= sign(other.wepangle);
	}

	wepangle = -wepangle
	//motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(5,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,aimDirection)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = -5

	break;
	
	//EXPLOSIVE SCREWDRIVER
	case 593:

	snd_play_fire(sndScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),ExplosiveShank)
	{
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -8

	break;
	
	//HEAVY CLUB
	case 594:

	snd_play_fire(sndFlail);

	instance_create(x,y,Dust)
	if !skill_got[2]
	scrMoveContactSolid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
		dmg = 16;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,2);
		motion_add(aimDirection,1)
	}
	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(13,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -7

	break;
	
	//AUTO LIGHTNING CROSSBOW
	case 595:

	snd_play_fire(sndCrossbow)
	altFire = !altFire;
	if altFire
	{
		wep_type[595] = 3;
	}
	else
	{
		wep_type[595] = 5;
	}
	with instance_create(x,y,LightningBolt)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//PLASMA FLAIL
	case 596:

	snd_play_fire(sndFlail)
	
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),PlasmaFlail)
	{
		dmg = 15;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		image_yscale = other.wepflip;//Line up animation with actual holding of weapon
		team = other.team
	}

	wepangle = -wepangle
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,3);
		motion_add(aimDirection,0.5)
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = -6

	break;
	
	//EXPLOSIVE SLUGGER
	case 597:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,SlugExplosive)
	{motion_add(aimDirection+(random(14)-7)*other.accuracy,15.5)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,4);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;

	//EXPLOSIVE GATLING SLUGGER
	case 598:

	snd_play_fire(sndSlugger)

	with instance_create(x,y,SlugExplosive)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,17.5)
	image_angle = direction
	team = other.team}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,3);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;
	
	//BLOOD SHOVEL
	case 599:

	snd_play_fire(sndBloodHammer)
	snd_play_fire(sndShovel)

	instance_create(x,y,Dust)
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BloodSlashRetail)
	{
		owner = other.id;
		dmg = 22
		 && Player.ultra_got[16]
		{
			dmg +=2;
		}

		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),BloodSlashRetail)
	{
		owner = other.id;
		dmg = 18
		 && Player.ultra_got[16]
		{
			dmg +=2;
		}
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+50*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),BloodSlashRetail)
	{
		owner = other.id;
		dmg = 18
		 && Player.ultra_got[16]
		{
			dmg +=2;
		}
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-50*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection,5)
	BackCont.viewx2 += lengthdir_x(18,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -4

	break;
	
	//SEPTUPLE SHORT POPGUN
	case 600:

	snd_play_fire(sndTripleMachinegun)
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.6);
		motion_add(aimDirection+180,0.5)
	}
	repeat(5)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}
	var ps = 9;//14
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,ps+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+20*other.accuracy+(random(6)-3)*other.accuracy,ps+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-20*other.accuracy+(random(6)-3)*other.accuracy,ps+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+10*other.accuracy+(random(6)-3)*other.accuracy,ps+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-10*other.accuracy+(random(6)-3)*other.accuracy,ps+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+30*other.accuracy+(random(6)-3)*other.accuracy,ps+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-30*other.accuracy+(random(6)-3)*other.accuracy,ps+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;
	
	//SUPER BOUNCER LASER PISTOL
	case 601:
	if Player.skill_got[17] = 1
	snd_play_fire(sndUltraLaserUpg)
	else
	snd_play_fire(sndUltraLaser)
	with instance_create(x,y,Laser)
	{
		image_angle = aimDirection+(random(2)-1)*other.accuracy
		team = other.team
		laserhit=35+(Player.skill_got[17]*5);
		sprite_index=sprBouncingLaser;
		image_yscale += 1.5
		event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 2

	break;
	
	//ULTRA HEAVY ROGUE RIFLE
	case 602:

	with instance_create(x,y,UltraHeavyRogueRifleBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//SPLINTER SHOVEL
	case 603:

	snd_play_fire(sndShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),SpikeSlash)
	{
	dmg = 20
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),SpikeSlash)
	{
	dmg = 16
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),SpikeSlash)
	{
	dmg = 16
	longarms = 0
	
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-50*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;
	
	//SPLINTER LANCE
	case 604:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),SplinterLanceShank)
	{
		dmg = 14;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,3.5+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection,8)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -6

	break;
	
	//STABBINATOR
	case 605:

	snd_play_fire(sndSuperSplinterGun)

	with instance_create(x,y,Stabinator)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	speed = 12;
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break
	
	//DIRECTOR PLASMA SHOTGUN
	case 606:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	var ang = -40;
	repeat(5)
	{
	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),RedirectorPlasmaBall)
	{motion_add(aimDirection+(ang*other.accuracy),3)//40-20
	image_angle = direction
	team = other.team
	}
	ang += 20;
	}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,7);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6

	break;
	
	//DIRECTOR BOX GUN
	case 607:

		snd_play_fire(sndWaveGun)
		var aimDir = aimDirection+(random(12)-6)*accuracy
		var s = 6
		var am = 5;//am*am = 9
		var offsetStep = 4*accuracy;
		var offset = offsetStep*am*0.5;
		var xx = x+lengthdir_x(offset,aimDir-90)+lengthdir_x(offset*0.5,aimDir+180);
		var yy = y+lengthdir_y(offset,aimDir-90)+lengthdir_y(offset*0.5,aimDir+180);
		var msk = mask_index;
		mask_index = mskBullet1;
			repeat(am)
			{
				var xxx = xx;
				var yyy = yy;
				repeat(am)
				{
					if !place_meeting(xx,yy,Wall)
						with instance_create(xx,yy,Bullet8)
						{
							motion_add(aimDir,s)
							image_angle = direction
							team = other.team
						}
					yy += lengthdir_y(offsetStep,aimDir);
					xx += lengthdir_x(offsetStep,aimDir);
				}
				xx = xxx;
				yy = yyy;
				yy += lengthdir_y(offsetStep,aimDir+90);
				xx += lengthdir_x(offsetStep,aimDir+90);
			}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 9
		wkick = 7

	break;
	
	//SHANKER
	case 608:
		snd_play_fire(sndShovel)
		snd_play_fire(sndScrewdriver)

		instance_create(x,y,Dust)

		with instance_create(x+lengthdir_x(8+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(8+(Player.skill_got[13]+bettermelee)*20,aimDirection),Shank)
		{
		dmg = 6
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x(5+(Player.skill_got[13]+bettermelee)*15,aimDirection+30*Player.accuracy),y+lengthdir_y(5+(Player.skill_got[13]+bettermelee)*15,aimDirection+30*Player.accuracy),Shank)
		{
		dmg = 6
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+30*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x(5+(Player.skill_got[13]+bettermelee)*15,aimDirection-30*Player.accuracy),y+lengthdir_y(5+(Player.skill_got[13]+bettermelee)*15,aimDirection-30*Player.accuracy),Shank)
		{
		dmg = 6
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-30*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+50*Player.accuracy),Shank)
		{
		dmg = 6
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+50*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-50*Player.accuracy),Shank)
		{
		dmg = 6
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-50*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team}

		wepangle = -wepangle
		motion_add(aimDirection,6)
		BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
		BackCont.shake += 2
		wkick = -4;
	
	break;
	
	//ASSAULT BLOOD NADER
	case 609:

	with instance_create(x,y,BloodLauncherBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}
	
	break;
	
	//CUBE SNIPER
	case 610:
	
	snd_play_fire(sndCuber)
	snd_play_fire(sndSniperFire)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	var aimdir = aimDirection+(random(10)-5*accuracy);
	var sps = 12 * accuracy;
	var xx = x;
	var yy = y;
	var spd = 17;
	with instance_create(xx,yy,PlayerSquareBullet)
	{
		motion_add(aimdir,spd)
		team = other.team
		image_angle = direction
		firedbysniper=true;
	}
	xx = x + lengthdir_x(sps,aimdir+90);
	yy = y + lengthdir_y(sps,aimdir+90);
	with instance_create(xx,yy,PlayerSquareBullet)
	{
		motion_add(aimdir,spd)
		team = other.team
		image_angle = direction
		firedbysniper=true;
	}
	xx = x + lengthdir_x(sps,aimdir-90);
	yy = y + lengthdir_y(sps,aimdir-90);
	with instance_create(xx,yy,PlayerSquareBullet)
	{
		motion_add(aimdir,spd)
		team = other.team
		image_angle = direction
		firedbysniper=true;
	}

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4.2
	wkick = 3

	break;
	
	//CUBE SNIPER
	case 611:
	
	snd_play_fire(sndHeavyCuber);
	snd_play_fire(sndSniperFire);

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	var aimdir = aimDirection+(random(10)-5*accuracy);
	var sps = 12 * accuracy;
	var xx = x;
	var yy = y;
	var spd = 17;
	with instance_create(xx,yy,PlayerHeavySquareBullet)
	{
		motion_add(aimdir,spd)
		team = other.team
		image_angle = direction
		firedbysniper=true;
	}
	xx = x + lengthdir_x(sps,aimdir+90);
	yy = y + lengthdir_y(sps,aimdir+90);
	with instance_create(xx,yy,PlayerHeavySquareBullet)
	{
		motion_add(aimdir,spd)
		team = other.team
		image_angle = direction
		firedbysniper=true;
	}
	xx = x + lengthdir_x(sps,aimdir-90);
	yy = y + lengthdir_y(sps,aimdir-90);
	with instance_create(xx,yy,PlayerHeavySquareBullet)
	{
		motion_add(aimdir,spd)
		team = other.team
		image_angle = direction
		firedbysniper=true;
	}

	BackCont.viewx2 += lengthdir_x(17,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(17,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4.8
	wkick = 3

	break;
	
	//SEPTUPLE BLOOD RIFLE
	case 612:

	snd_play_fire(sndMachinegun)
	snd_play_fire(sndBloodPistol)

	repeat(3)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+2*other.accuracy+(random(6)-3)*other.accuracy,19)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection-2*other.accuracy+(random(6)-3)*other.accuracy,19)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+12*other.accuracy+(random(6)-3)*other.accuracy,17)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection-12*other.accuracy+(random(6)-3)*other.accuracy,17)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+22*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection-22*other.accuracy+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5

	break;
	
	//TSUNAMI CANNON
	case 613:
	if wep_type[613] == 5
	{
		wep_type[613] = 4;
		wep_swap[613] = sndSwapEnergy
	}
	else
	{
		wep_type[613] = 5;
		wep_swap[613] = sndSwapDragon
	}
	snd_play_fire(sndSuperBazooka)
	if Player.skill_got[17] = 1
		snd_play_fire(sndLightningCannonUpg)
	else
		snd_play_fire(sndLightningCannon)
	snd_play_fire(sndBloodCannon)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),TsunamiBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,5.5)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,13);
		motion_add(aimDirection+180,4)
	}
	BackCont.viewx2 += lengthdir_x(18,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 11

	break;
	
	//SUPER LIGHTNING CANNON
	case 614:
	
	snd_play_fire(sndSuperBazooka)
	if Player.skill_got[17] = 1
		snd_play_fire(sndLightningCannonUpg)
	else
		snd_play_fire(sndLightningCannon)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),SuperLightningCannonBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,5)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,14);
		motion_add(aimDirection+180,4)
	}
	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;
	
	//SUPER FLAME CANNON
	case 615:

	snd_play_fire(sndSuperBazooka)
	snd_play_fire(sndFlameCannon)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),SuperFlameCannonBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,5)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,14);
		motion_add(aimDirection+180,3)
	}
	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 10

	break;
	
	//DIRECTOR BURST GRENADE LAUNCHER
	case 616:

	with instance_create(x,y,DirectorGrenadeBurst)
	{
	creator = other.id
	ammo = 3
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//GOLDEN DISC GUN
	case 617:

	snd_play_fire(sndGoldDiscGun)

	with instance_create(x,y,Disc)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,6)
	image_angle = direction
	sprite_index = sprDiscGold;
	alarm[1] = 5 + random(20);
	dmg += 1;
	dist -= 10;
	team = other.team}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 4

	break;
	
	//ULTRA HAND CANNON
	case 618:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,UltraHandCannonBullet)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4.5

	break;
	
	//SUPER KRAKEN GUN
	case 619:

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodHammer);

	snd_play_fire(choose(sndWater1,sndWater2) );
	var tentacleAim = - 30;
	repeat(5)
	{
		with instance_create(x,y,Tentacle)
		{
			image_angle = aimDirection + tentacleAim*other.accuracy
			team = other.team
			dmg += 0.5;
			ammo = 30
			image_yscale += 0.4;
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}

			    with instance_create(x,y,FishBoost)
			    {
			    motion_add( aimDirection+random(60)-30,2+random(4) );
			    }
		}
		aimDirection += 15
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;
	
	//raserRASER
	case 620:

	snd_play_fire(sndEraser)
	snd_play_fire(sndSuperDiscGun)
	with instance_create(x,y,DiscEraserBurst)
	{
	mox=UberCont.mouse__x;
	moy=UberCont.mouse__y;
	creator = other.id
	ammo = 6//16
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;
	
	//BOUNCER CROSSBOW
	case 621:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,BouncerBolt)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,20)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//SPLINTER RUSH
	case 622:
	snd_play(sndSplinterShotgun);
	var aimDir = aimDirection+180;
	with instance_create(x,y,SplinterBurst2)
	{
		accuracy = 6*other.accuracy;
		creator = other.id
		ammo = 5
		maxammo = ammo;
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(10,aimDir)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDir)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;
	
	//BOUNCER WAVE CROSSBOW
	case 623:
	snd_play(sndSuperCrossbow);
	var aimDir = aimDirection+180;
	with instance_create(x,y,BouncerBoltBurst)
	{
		accuracy = 30*other.accuracy;
		mox=UberCont.mouse__x;
		moy=UberCont.mouse__y;
		creator = other.id
		ammo = 5
		maxammo = ammo;
		time = 3
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(40,aimDir)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDir)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;
	
	//SUPER HEAVY GRENADE LAUNCHER
	case 624:

	snd_play_fire(sndNukeFire)
	snd_play_fire(sndHeavyNader)

	with instance_create(x,y,HeavyGrenade)
	{motion_add(aimDirection,12)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyGrenade)
	{motion_add(aimDirection+7*other.accuracy,12)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyGrenade)
	{motion_add(aimDirection-7*other.accuracy,12)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyGrenade)
	{motion_add(aimDirection+14*other.accuracy,12)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,HeavyGrenade)
	{motion_add(aimDirection-14*other.accuracy,12)
	image_angle = direction
	team = other.team}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,14);
		motion_add(aimDirection+180,4)
	}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 8

	break;
	
	//DOUBLE ENERGY LANCE
	case 625:

	if Player.skill_got[17] = 1
		snd_play_fire(sndEnergySwordUpg)
	else
		snd_play_fire(sndEnergySword)

	instance_create(x,y,Dust)
	
	var xx = x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection);
	var yy = y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection);
	var offset = 10*accuracy;
	var ofAngle = 90;
	repeat(2)
	{
		with instance_create(xx + lengthdir_x(offset,aimDirection + ofAngle)
		,yy + lengthdir_y(offset,aimDirection + ofAngle)
		,EnergyLanceShank)
		{
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,3.5+longarms)
		image_angle = direction
		team = other.team}
		ofAngle = -90;
	}

	wepangle = -wepangle
	motion_add(aimDirection,2.5)
	BackCont.viewx2 += lengthdir_x(18,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(18,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;
	
	//BLOOD WALL
	case 626:
		snd_play_fire(sndBloodPistol);
		snd_play_fire(sndQuadMachinegun);
		var msk = mask_index;
		mask_index = mskBullet1;
		var aimDir = aimDirection+(random(4)-2)*accuracy;
		var len = 6+(accuracy*3);
		var bx = x;
		var by = y;
		var xstep = lengthdir_x(len,aimDir+90);
		var ystep = lengthdir_y(len,aimDir+90);
		var count = 0;
		while (!place_meeting(bx,by,Wall) && count < 16 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,BloodBullet)
			{
				motion_add(aimDir,16);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		var xstep = lengthdir_x(len,aimDir-90);
		var ystep = lengthdir_y(len,aimDir-90);
		bx = x + xstep;
		by = y + ystep;
		count = 0;
		while (!place_meeting(bx,by,Wall) && count < 16 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,BloodBullet)
			{
				motion_add(aimDir,16);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 7

	break;
	
	//BOUNCER WAVE GUN
	case 627:
	snd_play_fire(sndBouncerShotgun)
	snd_play_fire(sndWaveGun);
	with instance_create(x,y,BouncerWaveBurst)
	{
	creator = other.id
	ammo = 7
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//LOTSIP RESAL
	case 628:


	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	
	
	var xx = UberCont.mouse__x + lengthdir_x(200,aimDirection);
	var yy = UberCont.mouse__y + lengthdir_y(200,aimDirection);
	var hit = collision_line_point(UberCont.mouse__x,UberCont.mouse__y,xx,yy,Wall,false,false)
	
	with instance_create(hit[1]+lengthdir_x(4,aimDirection+180),hit[2]+lengthdir_y(4,aimDirection+180),Laser)
	{image_angle = aimDirection+180
	team = other.team
	dmg ++;
	event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;
	
	//SKULLBREAKER
	case 629:
	snd_play_fire(sndWaveGun);
	with instance_create(x,y,SkullBreakerBurst)
	{
		accuracy = other.accuracy;
		creator = other.id
		ammo = 5
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;
	
	//PLASMA QUAKE
	case 630:

	if Player.skill_got[17] = 1
	snd_play_fire(sndDevastatorUpg)
	else
	snd_play_fire(sndDevastator)
	var am = 4;
	var ango = 32;
	var o = 32;
	var lo = o*0.5;
	var l = lo;
	var i = 0;
	repeat(am + 1)
	{
		with instance_create(x + lengthdir_x(l,aimDirection),
		y + lengthdir_y(l,aimDirection),PlasmaDelay)
		{ team = other.team
			Mod1=other.wepmod1;
				Mod2=other.wepmod2;
				Mod3=other.wepmod3;
				Mod4=other.wepmod4;
				alarm[0] = i;
				if i == 0
					event_perform(ev_alarm,0)
		}
		i++;
		l += o;
	}
	l = lo + o;
	i = 0;
	repeat(am)
	{
		with instance_create(x + lengthdir_x(l,aimDirection-ango*accuracy),
		y + lengthdir_y(l,aimDirection-ango*accuracy),PlasmaDelay)
		{ 
			team = other.team
			Mod1=other.wepmod1;
			Mod2=other.wepmod2;
			Mod3=other.wepmod3;
			Mod4=other.wepmod4;
			alarm[0] = i;
			if i == 0
				event_perform(ev_alarm,0)
		}
		i++;
		l += o;
	}
	l = lo + o;
	i = 0;
	repeat(am)
	{
		with instance_create(x + lengthdir_x(l,aimDirection+ango*accuracy),
		y + lengthdir_y(l,aimDirection+ango*accuracy),PlasmaDelay)
		{ team = other.team
			Mod1=other.wepmod1;
			Mod2=other.wepmod2;
			Mod3=other.wepmod3;
			Mod4=other.wepmod4;
			alarm[0] = i;
			if i == 0
				event_perform(ev_alarm,0)
		}
		i++;
		l += o;
	}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,8);
		motion_add(aimDirection+180,3)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 6

	break;
	
	//ULTRA LIGHTNING CANNON
	case 631:
	snd_play_fire(sndUltraLaser);
	if Player.skill_got[17] = 1
		snd_play_fire(sndLightningCannonUpg)
	else
		snd_play_fire(sndLightningCannon)

	with instance_create(x,y,UltraLightningCannonBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,8)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 5

	break
	
	//MINI ROCKET GUN
	case 632:

	snd_play_fire(sndMachinegun)

	with instance_create(x,y,RocketMini)
	{motion_add(aimDirection+(random(14)-7)*other.accuracy,14 + (instance_number(RocketMini) % 2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4

	break;
	
	//BURNING BLACK SWORD
	case 633:
	snd_play(sndFlare,0.02);
	var am = 12;
	if my_health>0
	snd_play_fire(choose(sndSword1,sndSword2))
	else
	{
		snd_play_fire(sndBlackSwordMega)
		reload -= wep_load[wep]*0.25;
	}

	instance_create(x,y,Dust)
	if !skill_got[2]
		scrMoveContactSolid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),FlameSlash)
	{
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		dmg = 15;
			
			{

				if Player.my_health <= 0
				{
					am += 4;
					dmg=70//80 in retail
					sprite_index=sprMegaFireSlash
					mask_index=mskMegaSlash;
				}
			}
		team = other.team
	}
	var len = 32 + ((Player.skill_got[13]+bettermelee)*20);
	var angStep = (120*accuracy) / am;
	var aimDir = aimDirection - (angStep*(am*0.5));
	var fx = x + lengthdir_x(len,aimDir);
	var fy = y + lengthdir_y(len,aimDir);
	var t = team;
	repeat(am)
	{
		with instance_create(fx,fy,Flame)
		{
			motion_add(aimDir,3+random(1))
			//image_angle = direction
			team = t
		}
		aimDir += angStep;
		fx = x + lengthdir_x(len,aimDir);
		fy = y + lengthdir_y(len,aimDir);
	}
	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(9,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -6

	break;

	//BURNING DARK SWORD
	case 634:
	snd_play(sndFlare,0.02);
	if my_health>0
	snd_play_fire(choose(sndSword1,sndSword2))
	else
	{
		snd_play_fire(sndBloodCannonLoop);
		snd_play_fire(sndBlackSwordMega);
		reload -= wep_load[wep]*0.25;
	}

	instance_create(x,y,Dust)
	if !skill_got[2]
		scrMoveContactSolid(aimDirection,5)

	instance_create(x,y,Dust)
	var am = 20;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*19,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*19,aimDirection),FlameSlash)
	{
		sprite_index = sprMegaFireSlash;
		mask_index = mskMegaSlash;
		dmg = 26;
		
		{

		if Player.my_health <= 0
		{
			am += 8;
			dmg=80;
			sprite_index=sprMegaFireDarkSwordSlash;
			mask_index=mskMegaDarkSwordSlash;
		}

		}
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	var len = 32 + ((Player.skill_got[13]+bettermelee)*20);
	var angStep = (160*accuracy) / am;
	var aimDir = aimDirection - (angStep*(am*0.5));
	var fx = x + lengthdir_x(len,aimDir);
	var fy = y + lengthdir_y(len,aimDir);
	var t = team;
	repeat(am)
	{
		with instance_create(fx,fy,Flame)
		{
			motion_add(aimDir,4+random(2))
			//image_angle = direction
			team = t
		}
		aimDir += angStep;
		fx = x + lengthdir_x(len,aimDir);
		fy = y + lengthdir_y(len,aimDir);
	}
	wepangle = -wepangle
	speed = -speed*0.5
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -7

	break;
	
	//DOUBLE SIDED BLADE
	case 635:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 12
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+15*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 12
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-15*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -6

	break;
	
	//AUTO FROST FLARE GUN
	case 636:

	snd_play_fire(sndFlare)

	with instance_create(x,y,FrostFlare)
	{
	sticky = 0
	motion_add(aimDirection+(random(16)-8)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(9,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(9,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;
	
	//SPLIT SEEKER PISTOL
	case 637:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SplitSeekerBolt)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,4+random(3))
	image_angle = direction
	team = other.team}


	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;
	
	//FIRE CHAIN GUN
	case 638:
	snd_play_fire(sndFlare);
	snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,ChainFire)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 4

	break;
	
	//FROST CHAIN GUN
	case 639:
	snd_play_fire(sndHeavyNader);
	snd_play_fire(choose(sndFrostShot1,sndFrostShot2));
	snd_play_fire(sndHeavyCrossbow)

	with instance_create(x,y,ChainFireFrost)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,26)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(45,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(45,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4

	break;
	
	//MINI ROCKET SHOTGUN
	case 640:

	snd_play_fire(sndShotgun);
	snd_play_fire(sndRocket);

	with instance_create(x,y,RocketMini)
	{motion_add(aimDirection+(random(8)-4)-5*other.accuracy,16 + (instance_number(RocketMini) % 2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,RocketMini)
	{motion_add(aimDirection+(random(8)-4)-10*other.accuracy,16 + (instance_number(RocketMini) % 2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,RocketMini)
	{motion_add(aimDirection+(random(8)-4)+5*other.accuracy,16 + (instance_number(RocketMini) % 2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,RocketMini)
	{motion_add(aimDirection+(random(8)-4)+10*other.accuracy,16 + (instance_number(RocketMini) % 2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,RocketMini)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16 + (instance_number(RocketMini) % 2))
	image_angle = direction
	team = other.team}
	

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 4

	break;
	
	//SUPER BEAM SHOTGUN
	case 641:

	//snd_play_fire(sndEraser)
	with instance_create(x,y,SuperBeamShotgunBurst)
	{
	creator = other.id
	ammo = 5
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//ULTRA BEAM SHOTGUN
	case 642:

	//snd_play_fire(sndEraser)
	with instance_create(x,y,UltraBeamShotgunBurst)
	{
	creator = other.id
	ammo = 6
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//BLOOD PLASMA RIFLE
	case 643:
	with instance_create(x,y,BloodPlasmaBurst)
	{
	creator = other.id
	ammo = 4;
	maxAmmo = ammo;
	time = 1
	team = other.team
	event_perform(ev_alarm,0) 
	}
	

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;
	
	//BLOOD PLASMA GUN
	case 644:

	if Player.skill_got[17] = 1
	snd_play_fire(sndBloodPlasmaUpg)
	else
	snd_play_fire(sndBloodPlasma)

	with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),BloodPlasmaBall)
	{
		motion_add(aimDirection+(random(7)-3.5*other.accuracy),16)
		image_angle = direction
		team = other.team
	}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5
	resetSpeed=false;

	break;
	
	//GOLDEN BLOOD RIFLE
	case 645:

	snd_play_fire(sndBloodPistol)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2.4
	wkick = 2.5

	break;
	
	//GOLDEN MORPH-O-PISTOL
	case 646:
		if !instance_exists(MorphSound)
		instance_create(x,y,MorphSound)
		with instance_create(x,y,Ray)
		{
			team = other.team;
			creator = other.id
			ammo = 3
			time = 3
			team = other.team
			morphType = 4;
		}

	break;
	
	//GOLDEN DIRECTOR SHOTGUN
	case 647:

	snd_play_fire(sndGoldDirectorShotgun)

	repeat(6)
	{
	with instance_create(x,y,Bullet7)
	{motion_add(aimDirection+(random(44)-22)*other.accuracy,9+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8.5
	wkick = 6

	break;
	
	//TOXIC REVOLVER
	case 648:

	snd_play_fire(sndToxicRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1Toxic)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3.5
	wkick = 3

	break;
	
	//GOLDEN TOXICREVOLVER
	case 649:

	snd_play_fire(sndGoldenToxicRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1Toxic)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//ULTRA FLARE GUN
	case 650:

	snd_play_fire(sndFlare)
	snd_play_fire(sndDragonStart)
	with instance_create(x,y,UltraFlare)
	{
	sticky = 0
	motion_add(aimDirection+(random(14)-7)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 6

	break;
	
	
	//GOLDEN LANCE
	case 651:
	snd_play_fire(sndGold);
	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),LanceShank)
	{
		sprite_index = sprGoldenLanceSlash;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,3.5+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection,8)
	BackCont.viewx2 += lengthdir_x(15,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -7

	break;
	
	//SUPER TRIDENT
	case 652:

	snd_play_fire(sndShovel)
	snd_play_fire(sndBloodHammer)
	snd_play_fire(sndRoll)
	
	instance_create(x,y,Dust)
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),KrakenSlash)
	{
		dmg = 20
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
		with instance_create(x,y,LightningSpawn)
		{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
		}
		with instance_create(x,y,FishBoost)
		{
			motion_add( other.image_angle+random(60)-30,2+random(4) );
		}
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection+40*accuracy),KrakenSlash)
	{
		dmg = 18
		length += 2;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+40*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
		with instance_create(x,y,LightningSpawn)
		{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
		}
		with instance_create(x,y,FishBoost)
		{
			motion_add( other.image_angle+random(60)-30,2+random(4) );
		}
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection-40*Player.accuracy),KrakenSlash)
	{
		dmg = 18
		length += 2;
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-40*Player.accuracy,2+longarms)
		image_angle = direction
		team = other.team
		with instance_create(x,y,LightningSpawn)
		{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
		}
		with instance_create(x,y,FishBoost)
		{
			motion_add( other.image_angle+random(60)-30,2+random(4) );
		}
	}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -4

	break;
	
	//GOLDEN YOYO GUN
	case 653:

	snd_play_fire(sndGoldDiscGun)

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,7.2)
		sprite_index = sprGoldYoyo;
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6.5
	wkick = 5.1

	break;
	
	//DIRECTOR DRAGGER
	case 654:

	snd_play_fire(sndDoubleShotgun);
	with instance_create(x,y,ShotgunEraserBurst)
	{
		thisAimDirection = aimDirection;
		angle *= other.accuracy;
		angleStep = angle/projectileAmount;
		creator = other.id
		ammo = 4
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;
	
	//THE CRENDOOKEN
	case 655:

	snd_play_fire(sndClusterLauncher);
	snd_play_fire(sndDiscgun);

	with instance_create(x,y,SpikedBall)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 7
	if wep_type[wep] < 5
		wep_type[wep] ++;
	else 
		wep_type[wep] = 1;
	switch (wep_type[wep])
	{
		case 1:
			wep_sprt[wep] = sprCrendookenBullet;
			wep_swap[wep] = sndSwapMachinegun;
		break;
		case 2:
			wep_sprt[wep] = sprCrendookenShotgun;
			wep_swap[wep] = sndSwapShotgun;
		break;
		case 3:
			wep_sprt[wep] = sprCrendookenBolt;
			wep_swap[wep] = sndSwapBow;
		break;
		case 4:
			wep_sprt[wep] = sprCrendookenExplosive;
			wep_swap[wep] = sndSwapExplosive;
		break;
		case 5:
			wep_sprt[wep] = sprCrendookenEnergy;
			wep_swap[wep] = sndSwapEnergy;
		break;
	}

	break;
	
	//THE SAFROODEN
	case 656:
	snd_play_fire(sndDragonStart)
	snd_play_fire(sndBalista)

	with instance_create(x,y,BallistaMashup)
	{
		motion_add(aimDirection+(random(4)-2)*other.accuracy,22)
		image_angle = direction
		team = other.team
		if Player.skill_got[17]
			speed *= 0.75;
	}
	BackCont.viewx2 += lengthdir_x(35,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(35,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 6
	if wep_type[wep] < 5
		wep_type[wep] ++;
	else 
		wep_type[wep] = 1;
	switch (wep_type[wep])
	{
		case 1:
			wep_sprt[wep] = sprSafroodenBullet;
			wep_swap[wep] = sndSwapMachinegun;
		break;
		case 2:
			wep_sprt[wep] = sprSafroodenShotgun;
			wep_swap[wep] = sndSwapShotgun;
		break;
		case 3:
			wep_sprt[wep] = sprSafroodenBolt;
			wep_swap[wep] = sndSwapBow;
		break;
		case 4:
			wep_sprt[wep] = sprSafroodenExplosive;
			wep_swap[wep] = sndSwapExplosive;
		break;
		case 5:
			wep_sprt[wep] = sprSafroodenEnergy;
			wep_swap[wep] = sndSwapEnergy;
		break;
	}
	break;
	
	//BALLISTA
	case 657:
	snd_play_fire(sndBalista);
	
	with instance_create(x,y,Ballista)
	{
		motion_add(aimDirection+(random(4)-2)*other.accuracy,26)
		image_angle = direction
		team = other.team
		
	}
	
	BackCont.viewx2 += lengthdir_x(45,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(45,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 7
	break;
	
	//AORTA
	case 658:

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	if !instance_exists(AortaSound)
		with instance_create(x,y,AortaSound)
			creator = other.id;
	var len = 6 * accuracy;
	var w = lengthdir_x(len,aimDirection + 90);
	var h = lengthdir_y(len,aimDirection + 90);
	with instance_create(x + w*2,y + h*2,BloodBurst)
	{
		accuracy *= other.accuracy;
		creator = other.id;
		xOffset = w*2;
		yOffset = h*2;
		ammo = 3;
		team = other.team
		event_perform(ev_alarm,0);
	}
	with instance_create(x + w*-2,y + h*-2,BloodBurst)
	{
		accuracy *= other.accuracy;
		creator = other.id;
		xOffset = w*-2;
		yOffset = h*-2;
		ammo = 3;
		team = other.team
		event_perform(ev_alarm,0);
	}
	with instance_create(x + w,y + h,BloodBurst)
	{
		accuracy *= other.accuracy;
		creator = other.id;
		xOffset = w;
		yOffset = h;
		bloodType = HeavyBloodBullet;
		ammo = 2;
		dmgreduc = 1;
		team = other.team
		event_perform(ev_alarm,0);
	}
	with instance_create(x - w,y - h,BloodBurst)
	{
		accuracy *= other.accuracy;
		creator = other.id;
		xOffset = -w;
		yOffset = -h;
		bloodType = HeavyBloodBullet;
		ammo = 2;
		dmgreduc = 1;
		team = other.team
		event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//THE ZYNDROXOOGEN
	case 659:
	snd_play_fire(sndDevastator);
	snd_play_fire(sndDoubleShotgun)
	snd_play_fire(sndCuber);
	
	
	with instance_create(x,y,PlasmaMashup)
	{
		motion_add(aimDirection+(random(4)-2)*other.accuracy,5)
		image_angle = direction
		angle = direction;
		team = other.team
	}
	var totalAng = 30 * accuracy;
	var am = 4;
	var angStep = totalAng/am;
	var ang = (aimDirection - (totalAng*0.5)) - 1;
	var ps = 15;
	var i = 0;
	repeat(am)
	{
		with instance_create(x,y,Bullet2Explosive)
		{
			motion_add(ang,ps);
			image_angle = direction
			team = other.team
		}
		i++;
		if i > 2
			ps --;
		else
			ps ++;
		ang += angStep;
	}
	ang = (aimDirection - (totalAng*0.5)) + 1;
	ps = 19;
	i = 0;
	repeat(am)
	{
		with instance_create(x,y,MorphBullet)
		{
			motion_add(ang,ps);
			image_angle = direction
			team = other.team
		}
		i++;
		if i > 2
			ps -= 2;
		else
			ps += 2;
		ang += angStep;
	}
	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5
	if wep_type[wep] < 5
		wep_type[wep] ++;
	else 
		wep_type[wep] = 1;
	
	switch (wep_type[wep])
	{
		case 1:
			wep_sprt[wep] = sprZyndroxoogenBullet;
			wep_swap[wep] = sndSwapMachinegun;
		break;
		case 2:
			wep_sprt[wep] = sprZyndroxoogenShotgun;
			wep_swap[wep] = sndSwapShotgun;
		break;
		case 3:
			wep_sprt[wep] = sprZyndroxoogenBolt;
			wep_swap[wep] = sndSwapBow;
		break;
		case 4:
			wep_sprt[wep] = sprZyndroxoogenExplosive;
			wep_swap[wep] = sndSwapExplosive;
		break;
		case 5:
			wep_sprt[wep] = sprZyndroxoogenEnergy;
			wep_swap[wep] = sndSwapEnergy;
		break;
	}
	break;
	
	//SUCKER PUNCHER
	case 660:
	
	snd_play_fire(sndSlugger)
	var leftHook = altFire ? 1 : -1;
	with instance_create(x,y,SmallSuckerPunch)
	{
		motion_add(aimDirection,16)
		hook = leftHook;
		direction += 20 * -hook * other.accuracy;
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,SuckerPunchBurst)
	{
		hook = leftHook*-1;
		creator = other.id
		ammo = 1
		time = 2
		team = other.team;
		alarm[0] = 5;
	}
	altFire = !altFire;
	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//ROLL OUT THE BOOM
	case 661:
	
	snd_play_fire(sndHeavyNader);
	var len = 12;
	var ogx = x + lengthdir_x(len,aimDirection);
	var ogy = y + lengthdir_y(len,aimDirection);
	var xx = ogx;
	var yy = ogy;
	var ogStepRangeExtra = 24;
	var stepRangeExtra = ogStepRangeExtra;
	with instance_create(xx,yy,ExplosionQueueLine)
	{
		team = other.team;
		theDirection = aimDirection;
		stepRange += stepRangeExtra;
	}
	len = 20*accuracy;
	repeat(4)
	{
		xx += lengthdir_x(len,aimDirection-110);
		yy += lengthdir_y(len,aimDirection-110);
		stepRangeExtra -= 6;
		with instance_create(xx,yy,ExplosionQueueLine)
		{
			team = other.team;
			theDirection = aimDirection;
			stepRange += stepRangeExtra;
		}
	}
	xx = ogx;
	yy = ogy;
	stepRangeExtra = ogStepRangeExtra;
	repeat(4)
	{
		stepRangeExtra -= 6;
		xx += lengthdir_x(len,aimDirection+110);
		yy += lengthdir_y(len,aimDirection+110);
		with instance_create(xx,yy,ExplosionQueueLine)
		{
			team = other.team;
			theDirection = aimDirection;
			stepRange += stepRangeExtra;
		}
	}
	with ExplosionQueueLine
	{
		if Player.skill_got[42]
		{
			amount = ceil(amount*Player.betterTail);
			scrActivateTail(hasTailNow);
		}	
	}
	BackCont.viewx2 += lengthdir_x(24,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12;
	wkick = 9

	break;
	
	//PHOENIX
	case 662:
		scrPhoenixGun(aimDirection);
	break;
	
	//MORPH-O-REVOLVER
	case 663:

	snd_play_fire(sndCuber);

	repeat(2)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,MorphBullet)
	{
		motion_add(aimDirection+(random(12)-6)*other.accuracy,16)
	image_angle = direction
	team = other.team
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;
	
	//DOUBLE POP GUN
	case 664:

	snd_play_fire(sndPopgun)

	repeat(2)
	{
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}

	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+10*other.accuracy+(random(12)-6)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection-10*other.accuracy+(random(12)-6)*other.accuracy,14+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;
	
	//ALTERNATOR
	case 665:

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	snd_play_fire(sndPopgun)
	if altFire
	{
		with instance_create(x,y,Bullet6)
		{motion_add(aimDirection+((random(12)-6)*other.accuracy),15)
		image_angle = direction
		team = other.team}
	}
	else
	{
		with instance_create(x,y,FreezeBullet)
		{motion_add(aimDirection+((random(12)-6)*other.accuracy),16)
		image_angle = direction
		team = other.team}
	}
	altFire = !altFire;
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;
	
	//TELEPATHOR
	case 666:

	with instance_create(x,y,TelepathorBurst)
	{
		creator = other.id
		ammo = 2
		time = 5
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;
	
	//MICRO SMG
	case 667:

	//snd_play_fire(sndPistol)
	snd_play(sndMicroSmg,0.03,true);
	if altFire
	{
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	}
	altFire = !altFire;
	with instance_create(x,y,MicroBullet)
	{
	direction = aimDirection+(random(30)-15)*other.accuracy;
	image_angle = direction;
	team = other.team
	scrGiveProjectileStats();
	event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;
	
	//MICRO SHOTGUN
	case 668:

	snd_play_fire(sndMicroSmg)
	snd_play_fire(sndShotgun)
	repeat(10)
	{
		with instance_create(x,y,MicroBullet)
		{
			direction = aimDirection+(random(44)-22)*other.accuracy;
			image_angle = direction;
			team = other.team
			scrGiveProjectileStats();
			event_perform(ev_alarm,0);
		}
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 2

	break;
	
	//SPIKE STAFF
	case 669:

	//snd_play_fire(sndSplinterPistol)
	snd_play_fire(sndWrench)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),SmallSlash)
	{
		longarms = 0
		
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction
		team = other.team
	}
	
	with instance_create(x,y,NailSlash)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,12)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -6

	break;
	
	//NEEDLE
	case 670:

	//snd_play_fire(sndSplinterPistol)
	snd_play_fire(sndScrewdriver)
	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),SmallSlash)
	{
		longarms = 0
		dmg = 3;
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.3+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),NarrowShank)
	{
		longarms = 0
		
			longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+(random(10)-5)*other.accuracy,9+longarms)
		image_angle = direction
		team = other.team
	}
	motion_add(aimDirection,2);
	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(6,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -6

	break;
	
	//SUPER NEEDLE
	case 671:

	snd_play_fire(sndSuperNeedle)
	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),SmallSlash)
	{
		longarms = 0
		dmg += 2;
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.3+longarms)
		image_angle = direction
		team = other.team
	}
	var xx = x;
	var yy = y;
	var px = xx;
	var py = yy;
	var l = 48 - Player.skill_got[13]*4;
	while (!collision_line(xx,yy,px,py,Wall,false,false) && collision_point(xx,yy,Floor,false,false))
	{
		px = xx;
		py = yy;
		with instance_create(xx,yy,NarrowShank)
		{
			dmg += 2;
			longarms = 0
			
				longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection+(random(10)-5)*other.accuracy,9+longarms)
			image_angle = direction
			team = other.team
		}
		xx += lengthdir_x(l,aimDirection);
		yy += lengthdir_y(l,aimDirection);
	}
	motion_add(aimDirection,4);
	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(6,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = - 9

	break;
	
	//MICRO LAUNCHER
	case 672:

	snd_play(sndMicroLauncher,0.03,true);
	with instance_create(x,y,MicroNade)
	{
		direction = aimDirection+(random(6)-3)*other.accuracy;
		image_angle = direction;
		team = other.team
		scrGiveProjectileStats();
		event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;
	
	//DROM
	case 673:

	snd_play_fire(sndDrom)
	var l = ((Player.skill_got[13]+bettermelee)*20);
	var oA = 10*Player.accuracy;
	repeat(4)
	{
		with instance_create(x+lengthdir_x(l,aimDirection),y+lengthdir_y(l,aimDirection),SmallSlash)
		{
			dmg += 4;
			longarms = 0
			longarms = (Player.skill_got[13]+other.bettermelee)*3;
			motion_add(aimDirection,1+longarms);
			motion_add(aimDirection+oA,2.5+longarms)
			image_angle = direction
			team = other.team
		}
		l += 16 + Player.skill_got[13];
		oA *= -1;
	}
	motion_add(aimDirection,2);
	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = - 5

	break;
	
	//SCYTHER
	case 674:

	with instance_create(x,y,ScytherBurst)
	{
		creator = other.id
		ammo = 3
		time = 3
		team = other.team
		event_perform(ev_alarm,0)
	}
	wepangle = -wepangle

	break;
	
	//ULTRA ASSAULT RIFLE
	case 675:

	with instance_create(x,y,UltraBurst)
	{
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;
	
	//MICRO ASSAULT RIFLE
	case 676:

	with instance_create(x,y,MicroBurst)
	{
		creator = other.id
		ammo = 5
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;
	
	//SUPER MICRO ASSAULT RIFLE
	case 677:

	with instance_create(x,y,MicroBurst)
	{
		creator = other.id
		ammo = 6
		time = 1
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,MicroBurst)
	{
		effects = false;
		creator = other.id
		ammo = 5
		time = 1
		team = other.team
		aimOffset = 6*other.accuracy;
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,MicroBurst)
	{
		effects = false;
		creator = other.id
		ammo = 5
		time = 1
		team = other.team
		aimOffset = -6*other.accuracy;
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,MicroBurst)
	{
		snd = sndMinigun;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		aimOffset = 12*other.accuracy;
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,MicroBurst)
	{
		effects = false;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		aimOffset = -12*other.accuracy;
		event_perform(ev_alarm,0) 
	}
	BackCont.shake -= 2;
	break;
	
	//STICKY GRENADE REVOLVER
	case 678:
		with instance_create(x,y,SmallStickyGrenadeBurst)
		{
			isGold = true;
			creator = other.id
			ammo = 3
			time = 2
			team = other.team
			event_perform(ev_alarm,0)
		}
	break;
	
	//STICKY GRENADE RIFLE
	case 679:
		with instance_create(x,y,SmallStickyGrenadeBurst)
		{
			isGold = true;
			creator = other.id
			ammo = 6
			time = 2
			team = other.team
			event_perform(ev_alarm,0)
		}
	break;
	
	
	//POWBOW
	case 680:
	with ChargePow {
		if scrChargeRelease()
		{
			instance_destroy();
		}
	}
	altFire = !altFire;
	if altFire
	{
		wep_type[680] = 3;
	}
	else
	{
		wep_type[680] = 2;
	}
	with instance_create(x,y,ChargePow)
	{
		maxcharge = 4;//maxrate
		creator = other.id
		chargetime = 3;
		team = other.team
		//Charge projectile
		ammo = 1;
		time = 2;
		if Player.skill_got[42]
		{
			ammo = ceil(ammo*Player.betterTail);
			time = 1;
			chargetime = 1;
			maxcharge++;
			if Player.ultra_got[97] && !Player.altUltra
			{
				time = 1;
				rate = maxcharge;
				maxcharge++;
			}
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0)
	}

	break;
	
	//BROXTOODEN
	case 681:
	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	snd_play_fire(sndSplinterPistol);
	with instance_create(x,y,FlameBurst)
	{
		creator = other.id
		ammo = 2
		time = 1
		team = other.team
		event_perform(ev_alarm,0)
	}
	var offset = 6 * accuracy;
	var ldx = lengthdir_x(offset,aimDirection+90);
	var ldy = lengthdir_y(offset,aimDirection+90);
	with instance_create(x,y,Laser)
	{
		image_angle = aimDirection+(random(2)-1)*other.accuracy
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,Burst)
	{
		creator = other.id
		ammo = 2
		time = 4
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x+ldx,y+ldy,EraserBurst)
	{
		boost = 3;
		projectileAmount = 1;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 2
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x-ldx,y-ldy,SplinterBurst)
	{
		mox = -ldx;
		moy = -ldy;
		creator = other.id
		ammo = 2
		time = 3
		team = other.team
		event_perform(ev_alarm,0) 
	}
	
	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick -= 2
	if wep_type[wep] < 5
		wep_type[wep] ++;
	else 
		wep_type[wep] = 1;
	switch (wep_type[wep])
	{
		case 1:
			wep_sprt[wep] = sprBroxtoovenBullet;
			wep_swap[wep] = sndSwapMachinegun;
		break;
		case 2:
			wep_sprt[wep] = sprBroxtoovenShotgun;
			wep_swap[wep] = sndSwapShotgun;
		break;
		case 3:
			wep_sprt[wep] = sprBroxtoovenBolt;
			wep_swap[wep] = sndSwapBow;
		break;
		case 4:
			wep_sprt[wep] = sprBroxtoovenExplosive;
			wep_swap[wep] = sndSwapExplosive;
		break;
		case 5:
			wep_sprt[wep] = sprBroxtoovenEnergy;
			wep_swap[wep] = sndSwapEnergy;
		break;
	}
	break;
	
	//ROPE KNIFE
	case 682:

	snd_play_fire(sndRopeKnife)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(26+((Player.skill_got[13]+bettermelee)*12),aimDirection),y+lengthdir_y(26+((Player.skill_got[13]+bettermelee)*12),aimDirection),RopeSpinSlash)
	{
		longarms = 0
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;
	
	//EXPLOSIVE REVOLVER
	case 683:

	snd_play_fire(sndHeavyRevolver)
	repeat(2)
		with instance_create(x,y,Shell)
			motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1Explosive)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//BOUNCER CANNON
	case 684:
	snd_play_fire(sndBouncerShotgun);
	snd_play_fire(sndSuperSlugger);
	var ang = aimDirection + 180;
	repeat(8)
	{
		with instance_create(x,y,Shell)
		{
			motion_add(ang,2+random(2));
			motion_add(aimDirection+180,1);
		}
		
		ang += 45;
	}

	with instance_create(x,y,BouncerCannon)
	{
		if Player.skill_got[42]
		{
			ammo = ceil(ammo*Player.betterTail);
			time = 1;
			scrActivateTail(hasTailNow);
		}
		motion_add(aimDirection+(random(8)-4)*other.accuracy,8)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 6

	break;
	
	//BOUNCER CHARGE LASER
	case 685:

	with instance_create(x,y,BouncerChargeLaser)
	{
		maxcharge=24;//maxrate
		type = 5;
		cost = 1;
		creator = other.id
		chargetime = 4;
		costtime = 9;
		team = other.team
		if Player.skill_got[42]
		{
			chargetime = 1;
			rate += 4;
			costtime *= Player.betterTail;
			if Player.ultra_got[97] && !Player.altUltra
			{
				rate += 8;
				chargetime = 1
			}
			maxcharge *= Player.betterTail;
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0)
		alarm[1] = costtime;
	}

	break;
	
	//ORBITER
	case 686:

	snd_play_fire(sndLaserCannonCharge)
	with instance_create(x,y,LaserOrber)
	{
		creator = other.id
		ammo = 2+(Player.skill_got[17]+other.betterlaserbrain)
		time = 4
		team = other.team
		alarm[0] = 7//15 originally
		alarm[1] = alarm[0] + ammo*time;
		if Player.skill_got[42]
		{
			time = 2;
			alarm[0] = max(1,alarm[0]*0.25);
			if Player.ultra_got[97] && !Player.altUltra
			{
				alarm[0] = 1;
				time = 1;
			}
		}
	}
	break;
	
	//TRIPLE BULLET LASER
	case 687:
		snd_play_fire(sndSniperFire);
		snd_play_fire(sndHeavyRevolver);
		snd_play_fire(sndQuadMachinegun);
		snd_play_fire(sndUltraPistol);
		var msk = mask_index;
		mask_index = mskBullet1;
		var aimDir = aimDirection+(random(6)-3)*accuracy;
		var len = 16+(accuracy*2);
		var xstep = lengthdir_x(len,aimDir);
		var ystep = lengthdir_y(len,aimDir);
		var bx = x;
		var by = y;
		var count = 0;
		while (!place_meeting(bx,by,Wall) && count < 32 || count < 2)
		{
			with instance_create(bx,by,Bullet1)
			{
				motion_add(aimDir,14);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		var offset = 6 * accuracy;
		bx = x+lengthdir_x(offset+4,aimDirection+90);
		by = y+lengthdir_y(offset+4,aimDirection+90);
		while (!place_meeting(bx,by,Wall) && count < 32 || count < 2)
		{
			with instance_create(bx,by,Bullet1)
			{
				motion_add(aimDir,12);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		bx = x+lengthdir_x(offset+4,aimDirection-90);
		by = y+lengthdir_y(offset+4,aimDirection-90);
		while (!place_meeting(bx,by,Wall) && count < 32 || count < 2)
		{
			with instance_create(bx,by,Bullet1)
			{
				motion_add(aimDir,12);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 12
		wkick = 7

	break;
	
	//ULTRA FLUGGER
	case 688:

	snd_play_fire(sndSuperSlugger)

	with instance_create(x,y,UltraFlug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,18)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 9

	break;
	
	//ULTRA FAT SMG
	case 689:

	snd_play_fire(sndHeavyRevolver)
	snd_play_fire(sndUltraPistol)
	repeat(2)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))

	with instance_create(x,y,UltraFatBullet)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	repeat(5)
	{
	with instance_create(x,y,Smoke)
	motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(3))
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;
	
	//ULTRA MICRO SMG
	case 690:

	//snd_play_fire(sndPistol)
	snd_play(sndMicroSmg,0.03,true);
	if altFire
	{
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(60)-30,2+random(2))
	}
	altFire = !altFire;
	with instance_create(x,y,UltraMicroBullet)
	{
		direction = aimDirection+(random(24)-12)*other.accuracy;
		image_angle = direction;
		team = other.team
		scrGiveProjectileStats();
		event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;
	
	//ULTRA TELEPATHOR
	case 691:

	with instance_create(x,y,UltraTelepathorBurst)
	{
		creator = other.id
		ammo = 2
		time = 7
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;
	
	//ULTRA KRAKEN GRENADE LAUNCHER
	case 692:

	snd_play_fire(sndGrenade);
	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodCannon);

	snd_play_fire(choose(sndWater1,sndWater2) );
	with instance_create(x,y,Tentacle)
	{
		sprite_index=sprUltraTentacle;
		ultra=true;
		dmg = 6;
		if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
		{
			dmg += 1;
		}
		image_angle = aimDirection+(random(60)-30)*other.accuracy
		team = other.team
		ammo = 16//24
		image_yscale += 0.3;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}

	}
	with instance_create(x,y,UltraOceanBomb)
	{
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,15)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(22,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(22,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 8
	
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,6);
		motion_add(aimDirection+180,2)
	}

	break;
	
	//ULTRA ROPE KNIFE
	case 693:

	snd_play_fire(sndUltraRopeKnife)

	instance_create(x,y,Smoke)

	with instance_create(x+lengthdir_x(26+((Player.skill_got[13]+bettermelee)*12),aimDirection),y+lengthdir_y(26+((Player.skill_got[13]+bettermelee)*12),aimDirection),UltraRopeSpinSlash)
	{
		longarms = 0
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,6+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -6

	break;
	
	//ELECTRO CROSSBOW
	case 694:

	snd_play_fire(sndCrossbow)
	altFire = !altFire;
	if altFire
	{
		wep_type[694] = 3;
	}
	else
	{
		wep_type[694] = 5;
	}
	with instance_create(x,y,ElectroBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(40,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//FROST SHOTGUN
	case 695:

	snd_play_fire(sndShotgun)
	with instance_create(x,y,FrostShotgunBurst)
	{
		creator = other.id
		ammo = 2
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}
	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 7

	break;
	
	//DOUBLE FROST SHOTGUN
	case 696:

	snd_play_fire(sndDoubleShotgun)
	with instance_create(x,y,FrostShotgunBurst)
	{
		creator = other.id
		ammo = 4
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}
	BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 7

	break;
	
	//FROST SHOTGUNNNER
	case 697:

	snd_play_fire(sndDoubleShotgun)
	with instance_create(x,y,FrostShotgunBurst)
	{
		creator = other.id
		projectileSpeed -= 2;
		ammo = 5
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
	}
	BackCont.viewx2 += lengthdir_x(1,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = 5

	break;
	
	//SPLINTER MACHINEGUN
	case 698:
	with instance_create(x,y,SplinterBurst)
	{
		totalAccuracy = 8;
		creator = other.id
		ammo = 2
		time = 4
		team = other.team
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick -= 3

	break;
	
	//HAPPY BOOM STICK
	case 699:

	snd_play_fire(sndDiscHit);
	snd_play_fire(sndHeavyNader);
	altFire = !altFire;
	if altFire
	{
		wep_type[699] = 3;
	}
	else
	{
		wep_type[699] = 4;
	}
	with instance_create(x,y,BoomStick)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,17);
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 7

	break;
	
	//BOMB LOBBER
	case 700:
	snd_play_fire(sndChickenThrow)
	snd_play_fire(sndClusterLauncher)

	with instance_create(x,y,LobGrenade)
	{
		accuracy = other.accuracy;
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,8)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LobGrenade)
	{
		accuracy = other.accuracy;
		alarm[2] -= 2;
	sticky = 0
	motion_add(aimDirection+(random(12)-6)*other.accuracy,6.25)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wepangle = -wepangle
	wkick = -5
	break;
	
	//MARKSMAN
	case 701:

	snd_play_fire(sndPistol)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,BulletMarksMan)
	{
		motion_add(aimDirection,12)
		image_angle = direction
		team = other.team
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick = 5

	break;
	
	//SHOTTY SIDEARM
	case 702:

	snd_play_fire(sndShotgun)
	snd_play_fire(sndDirectorShotgun)
	
	var ang = aimDirection - ((30 * accuracy)*0.5);
	var angstep = (30*accuracy) / 5;
	var ps = 0;
	var i = 0;
	repeat(5)
	{
		if i < 3
			ps ++;
		else
			ps --;
		i ++;
		with instance_create(x,y,Bullet2MarksMan)
		{
			motion_add(ang,12 + ps);
			image_angle = direction
			team = other.team
		}
		ang += angstep;
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 7

	break;
	
	//MICRO MACHINEGUN
	case 703:

	//snd_play_fire(sndPistol)
	snd_play(sndMicroSmg,0.02,true);
	if altFire
	{
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	}
	altFire = !altFire;
	with instance_create(x,y,MicroBullet)
	{
	direction = aimDirection+(random(10)-5)*other.accuracy;
	image_angle = direction;
	team = other.team
	scrGiveProjectileStats();
	event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;
	
	//ROCKET CLAP
	case 704:
	
	snd_play_fire(sndRocket)
	with instance_create(x,y,RocketMiniClap)
	{
		motion_add(aimDirection,8)
		image_yscale = -1;
		direction += 30 * image_yscale * other.accuracy;
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,RocketMiniClap)
	{
		motion_add(aimDirection,8)
		direction += 30 * image_yscale * other.accuracy;
		image_angle = direction
		team = other.team
	}
	altFire = !altFire;
	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//GRENADE STRIKE LAUNCHER
	case 705:

	snd_play_fire(sndClusterLauncher)

	with instance_create(x,y,LineGrenadeBomb)
	{
		sticky = 0
		motion_add(aimDirection+(random(6)-3)*other.accuracy,9)
		image_angle = direction
		team = other.team
		if Player.skill_got[42]
		{
			ammo = ceil(ammo*Player.betterTail);
			time -= 1;
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5

	break;
	
	//DENSE GUN
	case 706:

	snd_play_fire(sndHeavyRevolver);
	snd_play(sndClusterOpen);

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	var am = 6;
	var aim = aimDirection+(random(8)-4)*other.accuracy
	var ang = aim;
	var angStep = 60;
	var spd = 14;
	var len = 4 * accuracy;
	with instance_create(x,y,Bullet1)
	{motion_add(aim,spd)
	image_angle = direction
	team = other.team}
	repeat(am)
	{
		with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),Bullet1)
		{motion_add(aim,spd)
		image_angle = direction
		team = other.team}
		ang += angStep;
	}

	BackCont.viewx2 += lengthdir_x(15,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 4

	break
		
	//SMALL MISSILE BOMB
	case 707:

	snd_play_fire(sndClusterLauncher)

	with instance_create(x,y,SmallMissileBomb)
	{
		sticky = 0
		motion_add(aimDirection+(random(6)-3)*other.accuracy,8)
		image_angle = direction
		team = other.team
		if Player.skill_got[42]
		{
			ammo = ceil(ammo*Player.betterTail);
			time -= 1;
			scrActivateTail(hasTailNow);
		}
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 5

	break;
	
	//DOUBLE DISC GUN
	case 708:

	with instance_create(x,y,DiscBurst)
	{
		creator = other.id
		ammo = 2//16
		time = 6
		team = other.team
		event_perform(ev_alarm,0) 
	}
	break;
	
	//TOXIC LASER RIFLE
	case 709:

	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,LaserToxic)
	{image_angle = aimDirection+(random(10)-5)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;
	
	//TROP GUN
	case 710:

	snd_play_fire(choose(sndPopgun,sndMachinegun))
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	var aim = aimDirection +(random(26)-13)*other.accuracy
	with instance_create(x,y,Bullet1)
	{motion_add(aim,14)
	image_angle = direction
	team = other.team}
	var  len = 5*accuracy;
	if collision_line(x,y,x + lengthdir_x(len,aim + 90),y + lengthdir_y(len,aim + 90),Wall,false,false)
		len = 0;
	with instance_create(x + lengthdir_x(len,aim + 90),y + lengthdir_y(len,aim + 90),Bullet2)
	{motion_add(aim,16)
	image_angle = direction
	team = other.team}
	var  len = 5*accuracy;
	if collision_line(x,y,x + lengthdir_x(len,aim - 90),y + lengthdir_y(len,aim - 90),Wall,false,false)
		len = 0;
	with instance_create(x + lengthdir_x(len,aim - 90),y + lengthdir_y(len,aim - 90),Bullet2)
	{motion_add(aim,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;
	
	//METAL PIPE
	case 711:

	snd_play_fire(sndMetalPipe)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(2+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(2+((Player.skill_got[13]+bettermelee)*20),aimDirection),SmallSlash)
	{
	dmg = 9
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2.5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,1)
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -3

	break;
	
	//SPLINTER MINE LAUNCHER
	case 712:

	snd_play_fire(sndGrenadeRifle)
	altFire = !altFire;
	if altFire
	{
		wep_type[712] = 4;
	}
	else
	{
		wep_type[712] = 3;
	}
	with instance_create(x,y,SpikeMine)
	{
	sticky = 0
	motion_add(aimDirection+(random(12)-6)*other.accuracy,5)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 5

	break;
	
	//FIRE CHAIN TRIPWIRE
	case 713:

	snd_play_fire(sndTripwireLauncher)
	
	if altFire
	{
		wep_type[713] = 4;
	}
	else
	{
		wep_type[713] = 3;
	}
	
	with instance_create(x,y,ChainTrapBolt)
	{motion_add(aimDirection,24)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 4

	break;
	
	//GHOST SPEAR
	case 714:

	snd_play_fire(sndGhostShank)
	snd_play_fire(choose(sndSword1,sndSword2))
	instance_create(x,y,Smoke)
	instance_create(x,y,Dust)

	repeat(4+irandom(3))
	{
		with instance_create(x,y,GhostEffect)
			motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(4))
	}
	repeat(3)
	{
		with instance_create(x+lengthdir_x(58+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(58+((Player.skill_got[13]+bettermelee)*20),aimDirection),GhostEffect)
			motion_add(aimDirection+(random(30)-15)*other.accuracy,3+random(4))
	}
	with instance_create(x+lengthdir_x(58+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(58+((Player.skill_got[13]+bettermelee)*20),aimDirection),GhostSpearShank)
	{
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3.5+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x(2+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(2+((Player.skill_got[13]+bettermelee)*20),aimDirection),GhostSpearShank)
	{
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(14,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = -7

	break;
	
	//DOOM LOBBER
	case 715:
	snd_play_fire(sndChickenThrow)
	snd_play_fire(sndHeavyNader)

	with instance_create(x,y,LobDoomGrenade)
	{
		accuracy = other.accuracy;
		alarm[2] += 1;
	sticky = 0
	motion_add(aimDirection+(random(6)-3)*other.accuracy,9)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,LobDoomGrenade)
	{
		accuracy = other.accuracy;
		alarm[2] -= 3;
	sticky = 0
	motion_add(aimDirection+(random(12)-6)*other.accuracy,7.25)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wepangle = -wepangle
	wkick = -5
	break;
	
	//PLASMA LASER RIFLE
	case 716:
	snd_play(sndPlasma);
	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserUpg)
	else
	snd_play_fire(sndLaser)
	with instance_create(x,y,PlasmaLaser)
	{image_angle = aimDirection+(random(10)-5)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)}

	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5

	break;
	
	//BLOOD ROCKET GUN
	case 717:
	snd_play_fire(sndRocket)
	with instance_create(x,y,BloodRocketBurst)
	{
		creator = other.id
		ammo = 2
		time = 4
		team = other.team
		event_perform(ev_alarm,0) 
	}
	break;
	
	//DOUBLE BLOOD ROCKET GUN
	case 718:
	snd_play_fire(sndRocket)
	with instance_create(x,y,BloodRocketBurst)
	{
		creator = other.id
		aimOffset = 4* other.accuracy;
		ammo = 2
		time = 4
		team = other.team
		accuracyRange = 10;
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,BloodRocketBurst)
	{
		creator = other.id
		ammo = 2
		aimOffset = -4 * other.accuracy;
		time = 4
		accuracyRange = 10;
		team = other.team
		alarm[0] = 2;
	}
	break;
	
	//RED SCYTHE
	case 719:

	snd_play_fire(choose(sndSword1,sndSword2))
	snd_play_fire(sndHeavyCuber);
	snd_play_fire(sndSniperFire);

	instance_create(x,y,Dust)
	repeat(5)
	{
		with instance_create(x,y,Shell)
			motion_add(aimDirection+other.right*100+random(70)-35,2+random(2))
	}
	with instance_create(x+hspeed+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),y+vspeed+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*8),aimDirection),SpinSlash)
	{
		sprite_index = sprRedSpinSlash;
		dmg = 15
		speed = other.speed*0.5;
		direction = other.direction;
		longarms = 0
		longarms = Player.skill_got[13]+other.bettermelee
		motion_add(aimDirection,2+(longarms*2));
		image_angle = direction
		image_xscale = 1+(longarms*0.15);
		image_yscale = 1+(longarms*0.15);
		team = other.team
		rotation *= sign(other.wepangle);
	}
	with instance_create(x+lengthdir_x(15+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(15+((Player.skill_got[13]+bettermelee)*20),aimDirection),LanceShank)
	{
		dmg = 15;
		sprite_index = sprRedLanceSlash;
		longarms = 0
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,3.5+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,PlayerSquareBullet)
	{motion_add(aimDirection+(6*other.accuracy),18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,PlayerSquareBullet)
	{motion_add(aimDirection-(6*other.accuracy),18)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,PlayerHeavySquareBullet)
	{motion_add(aimDirection,20)
	image_angle = direction
	team = other.team}
	wepangle = -wepangle
	wkick = 10
	BackCont.viewx2 += lengthdir_x(40,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,aimDirection)*UberCont.opt_shake
	BackCont.shake += 10
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,32);
		motion_add(aimDirection + 180,6)
	}

	break;
	
	//ROGUE VAN CANNON
	case 720:
	
		snd_play_fire(sndPopgun);
		snd_play_fire(sndPlasmaHit);
		
		with instance_create(x,y,VanCannon)
		{
			sprite_index = sprRogueVanPortalClose
			alarm[0] = 0;
			alarm[1] = 5;
			image_speed = 0.8
			snd_play(sndVanWarning,0.1);
			direction = aimDirection+(random(16)-8)*other.accuracy;
			image_angle = direction;
			team = other.team;
		}
		BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 30
		wkick = 8
	break;
	
	//SPADER
	case 721:

	with instance_create(x,y,ShovelBurst)
	{
		creator = other.id
		ammo = 6
		time = 3
		team = other.team
		event_perform(ev_alarm,0)
	}

	break;
	
	//HEAVY SCREWDRIVER
	case 722:

	snd_play_fire(sndHeavyScrewdriver)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),HeavyShank)
	{
		dmg = 24;
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,3.5)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -8

	break;
	
	//FROST ASSAULT PISTOL
	case 723:

	with instance_create(x,y,FrostBurst)
	{
	creator = other.id
	ammo = 2
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;
	
	//FROST POP GUN
	case 724:

	snd_play_fire(choose(sndFrostShot1,sndFrostShot2))
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,FreezePellet)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,14.25+random(2))
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 3

	break;
	
	//ULTRA ORBITER
	case 725:

	snd_play_fire(sndLaserCannonCharge)
	with instance_create(x,y,LaserOrber)
	{
		isUltra = true;
		image_xscale = 0.4
		image_yscale = 0.4
		creator = other.id
		ammo = 3+(Player.skill_got[17]+other.betterlaserbrain)
		time = 3
		team = other.team
		alarm[0] = 3
		alarm[1] = alarm[0] + ammo*time;
		if Player.skill_got[42]
		{
			time = 2;
			alarm[0] = max(1,alarm[0]*0.25);
			if Player.ultra_got[97] && !Player.altUltra
			{
				alarm[0] = 1;
				time = 1;
			}
		}
	}
	with instance_create(x,y,LaserOrber)
	{
		isUltra = true;
		image_xscale = 0.4
		image_yscale = 0.4
		creator = other.id
		ammo = 2+(Player.skill_got[17]+other.betterlaserbrain)
		time = 3
		team = other.team
		aimOffset = 10 * other.accuracy;
		alarm[0] = 4
		alarm[1] = alarm[0] + ammo*time;
		if Player.skill_got[42]
		{
			time = 2;
			alarm[0] = max(1,alarm[0]*0.25);
			if Player.ultra_got[97] && !Player.altUltra
			{
				alarm[0] = 1;
				time = 1;
			}
		}
	}
	with instance_create(x,y,LaserOrber)
	{
		isUltra = true;
		image_xscale = 0.4
		image_yscale = 0.4
		creator = other.id
		ammo = 2+(Player.skill_got[17]+other.betterlaserbrain)
		time = 3
		aimOffset = -10 * other.accuracy;
		team = other.team
		alarm[0] = 5
		alarm[1] = alarm[0] + ammo*time;
		if Player.skill_got[42]
		{
			time = 2;
			alarm[0] = max(1,alarm[0]*0.25);
			if Player.ultra_got[97] && !Player.altUltra
			{
				alarm[0] = 1;
				time = 1;
			}
		}
	}
	break;
	
	//FROST TELEPATHOR
	case 726:

	with instance_create(x,y,FrostTelepathorBurst)
	{
		creator = other.id
		ammo = 2
		time = 5
		team = other.team
		event_perform(ev_alarm,0) 
	}

	break;
	
	//OLD RIFLE
	case 727:
	
	snd_play_fire(sndOldRifle)

	repeat(3)
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	with instance_create(x,y,Dust) {
		motion_add(aimDirection,3);	
	}
	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,17)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6
	if !skill_got[2]
	scrMoveContactSolid(aimDirection + 180,8);

	break;
	
	//MICRO GRENADE
	case 728:

	snd_play(sndMicroMicroLauncher,0.03,true);
	with instance_create(x,y,MicroMicroNade)
	{
		direction = aimDirection+(random(16)-8)*other.accuracy;
		image_angle = direction;
		team = other.team
		scrGiveProjectileStats();
		event_perform(ev_alarm,0);
	}

	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 5

	break;
	
	//ICICLE GUN
	case 729:

	with instance_create(x,y,IcicleBurst)
	{
		creator = other.id
		ammo = 7//16
		time = 2
		team = other.team
		event_perform(ev_alarm,0)
		if instance_exists(Player) && other.object_index == Player && Player.skill_got[42] && Player.ultra_got[97] && !Player.altUltra
			alarm[0] = 1;
	}
	with instance_create(x,y,IcicleBurst)
	{
		creator = other.id
		ammo = 6//16
		time = 2
		team = other.team
		alarm[0] = 1;
		accuracyRange += 2;
	}
	
	with instance_create(x,y,IcicleBurst)
	{
		creator = other.id
		ammo = 5//16
		time = 2
		team = other.team
		alarm[0] = 1;
		accuracyRange += 8;
	}
	with instance_create(x,y,IcicleBurst)
	{
		creator = other.id
		ammo = 3
		time = 3
		team = other.team
		alarm[0] = 1;
		accuracyRange += 4;
	}
	break;
	
	//FROST KNIFE
	case 730:

	snd_play_fire(sndFrostDagger)
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),FrostShank)
	{
		dmg = 8;
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
	motion_add(aimDirection,3.5)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -8

	break;
	
	//GOLDEN FROST KNIFE
	case 731:

	snd_play_fire(sndFrostDagger)
	snd_play(sndGold);
	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*10,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*10,aimDirection),FrostShank)
	{
		sprite_index = sprGoldFrostShank;
		dmg = 8;
	longarms = 0
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	if !skill_got[2]
		motion_add(aimDirection,3.5)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -8

	break;
	
	//BLOB GUN
	case 732:

	snd_play_fire(sndBlobFireS);

	with instance_create(x,y,BlobBall)
	{
		motion_add(aimDirection+(random(8)-4)*other.accuracy,8)
		team = other.team
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,4);
		motion_add(aimDirection+180,2)
	}
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 7

	break;
	
	//BLOB CANNON
	case 733:

	snd_play_fire(sndBlobFireL);

	with instance_create(x,y,BlobCannonBall)
	{
		motion_add(aimDirection+(random(8)-4)*other.accuracy,7)
		team = other.team
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,6);
		motion_add(aimDirection+180,4)
	}
	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 9

	break;
	
	//MICRO MINIGUN
	case 734:

	//snd_play_fire(sndPistol)
	snd_play(sndMicroMinigun,0.03,true);
	if altFire
	{
		with instance_create(x,y,Shell)
		motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))
	}
	altFire = !altFire;
	with instance_create(x,y,MicroBullet)
	{
	direction = aimDirection+(random(32)-16)*other.accuracy;
	image_angle = direction;
	team = other.team
	scrGiveProjectileStats();
	event_perform(ev_alarm,0);
	}
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,0.2);
		motion_add(aimDirection+180,0.2)
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 2

	break;
	
	//SCYTHER DISPERSE GUN
	case 735:

	snd_play_fire(sndHeavyRevolver)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,ScytherDisperseBullet)
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,10)
	image_angle = direction
	team = other.team
	time=2;
	event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 4

	break;
	
	//LIGHTNING DRONE LAUNCHER
	case 736:

	snd_play_fire(sndClusterLauncher)

	with instance_create(x,y,LightningDrone)
	{
		motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
		image_angle = direction;
		team = other.team
		if hspeed > 0
			right = -1;
		else
			right = 1;
	}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 4

	break;
	
	//SCYTHER WALL DISPERSE GUN
	case 737:
		snd_play_fire(sndShotgun);
		snd_play_fire(sndQuadMachinegun);
		var msk = mask_index;
		mask_index = mskBullet1;
		var aimDir = aimDirection+(random(4)-2)*accuracy;
		var len = 18+(accuracy*4);
		var bx = x;
		var by = y;
		var xstep = lengthdir_x(len,aimDir+90);
		var ystep = lengthdir_y(len,aimDir+90);
		var count = 0;
		while (!collision_line(x,y,bx,by,Wall,false,false) && count < 6 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,ScytherDisperseBullet)
			{
				alarm[0] += count % 2;
				time += 1 + count % 2;
				motion_add(aimDir,9);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		var xstep = lengthdir_x(len,aimDir-90);
		var ystep = lengthdir_y(len,aimDir-90);
		bx = x + xstep;
		by = y + ystep;
		count = 0;
		while (!collision_line(x,y,bx,by,Wall,false,false) && count < 6 || count < 1)
		{
			instance_create(bx,by,Dust);
			with instance_create(bx,by,ScytherDisperseBullet)
			{
				alarm[0] += count % 2;
				time += 1 + count % 2;
				motion_add(aimDir,9);
				image_angle = direction
				team = other.team
			}
			bx += xstep;
			by += ystep;
			count ++;
		}
		mask_index = msk;
		BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 10
		wkick = 7

	break;
	
	//PING PONG GUN
	case 738:

	snd_play_fire(sndPingPongFire)

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PingPongBall)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,14)
	image_angle = direction
	team = other.team
	fireRotation = direction;}

	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection + 180,1);
		motion_add(aimDirection+180,1)
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 6
	break;
	
	//SLAPPER
	case 739:

	snd_play_fire(sndSlapper)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),SlapperSlap)
	{
		longarms = 0
		dmg = 16;
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2.5+longarms)
		image_angle = direction - (5*other.accuracy*other.wepflip);
		image_yscale = other.wepflip;//Line up animation with actual holding of weapon
		team = other.team
	}

	wepangle = -wepangle
	if !skill_got[2]
	{
		scrMoveContactSolid(aimDirection,3);
		motion_add(aimDirection,2)
	}
	BackCont.viewx2 += lengthdir_x(20,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = -5

	break;
	
	//BAYONETTE RIFLE
	case 740:
	wep_sprt[740] = sprBayonetteRifle;
	with instance_create(x,y,BayonetteRifle)
	{
		maxcharge = 15;//maxrate
		type = 2;
		cost = 1;
		creator = other.id
		chargetime = 3;
		costtime = 9
		team = other.team
		if Player.skill_got[42]
		{
			chargetime = 1;
			rate += 2;
			costtime *= Player.betterTail;
			if Player.ultra_got[97] && !Player.altUltra
			{
				rate = maxcharge;
				chargetime = 1;
			}
			maxcharge *= Player.betterTail;
			scrActivateTail(hasTailNow);
		}
		event_perform(ev_alarm,0);
		alarm[1] = costtime;
	}

	break;
	
	//PAPER CRAFT GUN
	case 741:
	snd_play_fire(sndPaperGun)
	with instance_create(x,y,PaperCraft)
	{
		motion_add(aimDirection+((random(6)-3)*other.accuracy),8)
		image_angle = direction
		team = other.team
		if hspeed > 0
			right = 1;
		else
			right = -1;
	}


	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick -= 3
	
	break;
	
	//MAGGOT LAUNCHER
	case 742:

	with instance_create(x,y,AcidStreak)
	{
		motion_add(aimDirection+(random(30)-15)*other.accuracy,6 + random(3));
		image_angle = direction;
	}
	snd_play(sndMaggotLauncherFire);
	with instance_create(x,y,FriendlyMaggot)
	{
		ignoreOverlap = true;
		raddrop = 0;
		existTime = 30;
		countKill = false;
		motion_add(aimDirection+(random(16)-8)*other.accuracy,12)
		image_angle = direction
		team = other.team
		charge = true;
		wasResurrected = true;
		alarm[1] = 0;
	}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick = 2

	break;
	
	//WOMBO COMBO SUCKER PUNCHER
	case 743:
	
	with instance_create(x,y,WomboComboBurst)
	{
	creator = other.id
	ammo = 3
	time = 4
	team = other.team
	event_perform(ev_alarm,0) 
	}
	/*
	snd_play_fire(sndSlugger)
	var leftHook = altFire ? 1 : -1;
	with instance_create(x,y,SmallSuckerPunch)
	{
		motion_add(aimDirection,16)
		hook = leftHook;
		direction += 20 * -hook * other.accuracy;
		image_angle = direction
		team = other.team
	}
	with instance_create(x,y,SuckerPunchBurst)
	{
		hook = leftHook*-1;
		creator = other.id
		ammo = 1
		time = 2
		team = other.team;
		alarm[0] = 5;
	}
	altFire = !altFire;
	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8
	*/
	break;
	
	}//end of switch part 2!
}
