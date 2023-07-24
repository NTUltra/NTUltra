function scrFire2() {
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
	ammo = 16
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

	motion_add(aimDirection+180,12)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team
	snd_hit=sndSledgeHit;}

	wepangle = -wepangle
	motion_add(aimDirection,6)
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

	move_contact_solid(aimDirection,3)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		image_xscale -= 0.15;
		image_yscale -= 0.15;
	dmg = 4
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	x += sign(hspeed);
	y += sign(vspeed);
	BackCont.viewx2 += lengthdir_x(6,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -5

	break;


	//SUPERHOT REVOLVER
	case 201:

	snd_play_fire(sndHeavyRevolver)

	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))

	with instance_create(x,y,HeavyBullet)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,16)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 7
	wkick = 6

	break;


	//SUPERHOT ASSAULT RIFLE
	case 202:

	with instance_create(x,y,HeavyBurst)
	{
	creator = other.id
	ammo = 3
	time = 4
	team = other.team
	event_perform(ev_alarm,0) 
	}

	break;


	//FLAME WAVE GUN
	case 203:
	snd_play_fire(sndFireShotgun);

	with instance_create(x,y,FlameWaveBurst)
	{
	creator = other.id
	ammo = 7
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
	BackCont.shake += 6
	wkick = 6

	break;


	//PLASMA SHOTGUN
	case 205:

	if Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaUpg)
	else
	snd_play_fire(sndPlasma)

	var ang = -40;
	repeat(5)
	{
	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBall)
	{motion_add(aimDirection+(ang*other.accuracy),2)//40-20
	image_angle = direction
	team = other.team
	}
	ang += 20;
	}

	motion_add(aimDirection+180,2)
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

	motion_add(aimDirection+180,2)
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

	motion_add(aimDirection+180,4)
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

	motion_add(aimDirection+180,1)
	BackCont.viewx2 += lengthdir_x(3,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = 4
	resetSpeed=false;

	break;


	//BIG MISSILE LAUNCHER
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

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
	sprite_index=sprAxeSlash;
	mask_index = mskBigAxeSlash;
	dmg = 10//25//shovel is 8 sledge = 16
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team
	snd_hit=sndSledgeHit;}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -5

	break;


	//VIKING AXE
	case 215:

	snd_play_fire(sndWrench)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
	dmg = 4//shovel is 8
	image_xscale *= 0.8;
	image_yscale *= 0.8;
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


	//GRENADE SHOTGUN
	case 216:

	snd_play_fire(sndGrenadeShotgun)

	repeat(5)
	{
	with instance_create(x,y,SmallGrenade)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,9+random(3))//speed=10
	image_angle = direction
	team = other.team
	alarm[0] = 14//shorter fuse original 40 regular naddes 60
	}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 7

	break;


	//AUTO GRENADE SHOTGUN
	case 217:

	snd_play_fire(sndGrenadeShotgun)

	repeat(4)
	{
	with instance_create(x,y,SmallGrenade)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,9+random(3))//speed=10
	image_angle = direction
	team = other.team
	alarm[0] = 14//shorter fuse original 40 regular naddes 60
	}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 7

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

	if instance_exists(Player)
	{
	if Player.skill_got[17] = 1//laserbrain
	dmg = 17
	}

	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,-6)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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
	motion_add(aimDirection,6)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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
	motion_add(aimDirection,6)
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

	motion_add(aimDirection+180,1.5)
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

	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	wkick -= 4

	break;


	//GOLDEN BAZOOKA
	case 229:

	snd_play_fire(sndGoldRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,2)
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
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,2)
	BackCont.viewx2 += lengthdir_x(12,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -9

	break;


	//GUITAR
	case 231:

	snd_play_fire(sndGuitar)

	instance_create(x,y,Dust)

	move_contact_solid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		sprite_index = sprHeavySlash;
	snd_wallhit=sndGuitarHitWall;
	snd_hit=sndGuitarHit;
	dmg = 28
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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

	motion_add(aimDirection+180,8)

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

	motion_add(aimDirection+180,1)

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
	motion_add(aimDirection+(random(6)-3)*other.accuracy,11+random(2));
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
	ammo = 23//equal to reload time?
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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

	repeat(4){
	with instance_create(x,y,SwarmBolt)
	{motion_add(aimDirection+(random(20)-10)-20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	}

	repeat(4){
	with instance_create(x,y,SwarmBolt)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	}

	repeat(4){
	with instance_create(x,y,SwarmBolt)
	{motion_add(aimDirection+(random(20)-10)+20*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
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
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)+7*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)+14*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)-7*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
	}
	with instance_create(x,y,MegaLaser)
	{image_angle = aimDirection+(random(2)-1)-14*other.accuracy
	team = other.team
	image_yscale+=0.2;
	isUltra=true;
	event_perform(ev_alarm,0)
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


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(26)-13)*other.accuracy
		iframeskip -= 0.03;
	team = other.team
	ammo = 26
	event_perform(ev_alarm,0)
	visible = 0
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

	motion_add(aimDirection+180,1)



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

	motion_add(aimDirection+180,16)

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

	motion_add(aimDirection+180,16)

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

	repeat(9)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 9
	wkick = 6

	wep_type[258]=1;
	wep_sprt[258] = sprShotgunRifle2
	wep_cost[258] = 5;
	}
	else
	{
	with instance_create(x,y,Burst)
	{
	creator = other.id
	ammo = 5
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}
	wep_type[258]=2;
	wep_sprt[258] = sprShotgunRifle1
	wep_cost[258] = 1;
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
	time = 2
	team = other.team
	event_perform(ev_alarm,0) 
	}
	wep_sprt[259] = sprBulletPopper2;
	}
	else
	{
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

	snd_play_fire(sndDiscgun)

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,6)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy+60,6)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy+120,6)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy+180,6)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy+240,6)
	image_angle = direction
	team = other.team}

	with instance_create(x,y,Yoyo)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy+300,6)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(11,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(11,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 6

	break;

	//ELECTRIC GUITAR
	case 263:

	snd_play_fire(sndGuitar)

	instance_create(x,y,Dust)

	move_contact_solid(aimDirection,4)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),LightningSlash)
	{
	snd_wallhit=sndGuitarHitWall;
	snd_hit=sndGuitarHit;
	dmg = 24//26
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	speed = -speed*0.5
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
	motion_add(aimDirection+180,1)
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
	motion_add(aimDirection+180,1.4)
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
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,14)
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
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,14)
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
	event_perform(ev_alarm,0)
	laserhit=3;
	sprite_index=sprBouncingLaser;
	image_yscale -= 0.14}

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
	event_perform(ev_alarm,0)
	laserhit=4;
	sprite_index=sprBouncingLaser;
	image_yscale -= 0.14}

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
	{motion_add(aimDirection+(random(32)-16)*other.accuracy,14)
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

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20+24,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20+24,aimDirection),GhostSlash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,7+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),GhostSlash)
	{
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
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	team = other.team}

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
		dmg = 14;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	repeat(3+irandom(3))
	{
	with instance_create(x,y,GhostEffect)
	motion_add(aimDirection+70+(random(30)-15)*other.accuracy,3+random(4))
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14,aimDirection+60*Player.accuracy),GhostSlash)
	{
		dmg = 12;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	repeat(3+irandom(3))
	{
	with instance_create(x,y,GhostEffect)
	motion_add(aimDirection-70+(random(30)-15)*other.accuracy,3+random(4))
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14,aimDirection-60*Player.accuracy),GhostSlash)
	{
		dmg = 12;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}

	//longer shovelnessness
	var l = 24;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*19+l,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*19+l,aimDirection),GhostSlash)
	{
		dmg = 14;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14+l,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14+l,aimDirection+60*Player.accuracy),GhostSlash)
	{
		dmg = 12;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*14+l,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*14+l,aimDirection-60*Player.accuracy),GhostSlash)
	{
		dmg = 12;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-60*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
	BackCont.viewx2 += lengthdir_x(24,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(24,aimDirection)*UberCont.opt_shake
	BackCont.shake += 1
	wkick = -4

	break;

	//GOLDEN FLAMETHROWER
	case 276:

	if !instance_exists(FlameSound)
	instance_create(x,y,FlameSound)
	with instance_create(x,y,FlameBurst)
	{
	creator = other.id
	ammo = 12
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


	//GOLDEN SHOVEL
	case 278:

	snd_play_fire(sndShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
	sprite_index=sprGoldenSlash;
	dmg = 10
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),Slash)
	{
	sprite_index=sprGoldenSlash;
	dmg = 10
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),Slash)
	{
	sprite_index=sprGoldenSlash;
	dmg = 10
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
	BackCont.shake += 2
	wkick = -4

	break;

	//GOLDEN EXPLOSIVE CROSSBOW
	case 279:

	snd_play_fire(sndCrossbow)

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

	snd_play_fire(sndShotgun)

	repeat(20)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(80)-40)*other.accuracy,6+random(7))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(13,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 10
	wkick = 8

	break;

	//GOLDEN BULLET SHOTGUN
	case 282:

	snd_play_fire(sndShotgun)

	repeat(8)
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

	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		sprite_index=sprGoldenSlash
		dmg = 9
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
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
				if instance_exists(Player)
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	x += lengthdir_x(1,aimDirection+180)
	y += lengthdir_y(1,aimDirection+180)
	xprevious = x;
	yprevious = y;
	
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
	motion_add(aimDirection+(random(14)-7)*other.accuracy,13)
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
	{motion_add(aimDirection+(random(34)-17)*other.accuracy,6)//5.1
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = 2

	break;

	//ENERGY GLOVE
	case 291:
	if Player.skill_got[17] = 1
	snd_play_fire(sndLaserSwordUpg)
	else
	snd_play_fire(sndLaserSword)

	instance_create(x,y,Dust)

	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
	{
		longarms = 0
		if instance_exists(Player)
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
			if instance_exists(Player)
				longarms = (Player.skill_got[13]+other.bettermelee)*2
			motion_add(aimDirection,1+longarms)
			image_angle = aimDirection
			team = other.team
			}
		}
	}
	x += lengthdir_x(1,aimDirection+180)
	y += lengthdir_y(1,aimDirection+180)
	xprevious = x;
	yprevious = y;

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

	motion_add(aimDirection+180,3)

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
	maxcharge=27;//maxrate
	type=2;
	cost=1;
	creator = other.id
	//ammo = 9
	chargetime = 2
	costtime = 14
	team = other.team
	event_perform(ev_alarm,0)
	event_perform(ev_alarm,1) 
	}

	break;

	//CHARGE LASER
	case 295:

	with instance_create(x,y,ChargeLaser)
	{
	maxcharge=27;//maxrate
	type=5;
	cost=1;
	creator = other.id
	//ammo = 9
	chargetime = 1
	costtime = 14
	team = other.team
	event_perform(ev_alarm,0)
	event_perform(ev_alarm,1) 
	}

	break;

	//CHARGE FLAKCANNON
	case 296:

	with instance_create(x,y,ChargeFlakCannon)
	{
	maxcharge=50;//maxrate
	type=2;
	cost=1;
	creator = other.id
	//ammo = 9
	chargetime = 1
	costtime = 13
	team = other.team
	event_perform(ev_alarm,0)
	event_perform(ev_alarm,1) 
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
	ammo = 7
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

	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)
	instance_create(x,y,Smoke)
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 25;
		sprite_index=sprUltraSlash;
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
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
				sprite_index=sprUltraSlash;
				longarms = 0
				if instance_exists(Player)
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	x += lengthdir_x(1,aimDirection+180)
	y += lengthdir_y(1,aimDirection+180)
	xprevious = x;
	yprevious = y;
	alarm[3]=max(4,alarm[3]);//imunity
	BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = -12

	break;

	//ULTRA SPLINTER GUN
	case 302:

	snd_play_fire(sndUltraCrossbow)
	snd_play_fire(sndSplinterGun)

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

	BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	wkick -= 6

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

	motion_add(aimDirection+180,1)

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
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,14)
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
	motion_add(aimDirection+(random(14)-7)*other.accuracy,9)
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
	{motion_add(aimDirection+(random(12)-6)*other.accuracy,14)
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

	if random(54)<1
	move_contact_solid(direction+180,300);

	if random(54)<1
	move_contact_solid(direction,300);


	move_contact_solid(random(360),random(8));


	BackCont.viewx2 += lengthdir_x(16,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(16,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 69
	wkick = choose(-24,24);

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
	costtime = 14
	team = other.team
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

	motion_add(aimDirection+180,1)

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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,4)
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
		ammo = 12
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}

		with instance_create(x,y,Lightning)
		{image_angle = aimDirection+(random(30)-15)+30*other.accuracy
		team = other.team
		ammo = 12
		event_perform(ev_alarm,0)
		visible = 0
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


	//ICE CANNON
	case 324:

	snd_play_fire(sndGrenade)
	snd_play_fire(sndFrostShot1)

	with instance_create(x,y,IceCannonBall)
	{
	image_angle=random(360);
	motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	team = other.team}

	motion_add(aimDirection+180,2)
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
	motion_add(aimDirection+(random(10)-5)*other.accuracy,11+random(2))
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

	motion_add(aimDirection+180,2)
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

	motion_add(aimDirection+180,2)
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

	move_contact_solid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BlackSwordSlash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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

	move_contact_solid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*19,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*19,aimDirection),DarkSwordSlash)
	{
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection-60*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-60,2+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection+60*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,7)
	BackCont.viewx2 += lengthdir_x(26,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(26,aimDirection)*UberCont.opt_shake
	BackCont.shake += 2
	wkick = -5

	break;

	//HYPERGATLING BAZOOKA
	case 333:

	snd_play_fire(sndRocket)

	with instance_create(x,y,Rocket)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,2)
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
	ammo = 10
	event_perform(ev_alarm,0)
	visible = 0
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
	ammo = 8
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

	//FROST AXE
	case 339:

	snd_play_fire(sndFrostShot1);
	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)
	var t = team;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),FrostSlash)
	{
		dmg = 16//shovel is 12 is frostglove
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
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
	motion_add(aimDirection,6)
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

	dmg = 18//shovel is 12 is frostglove
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

	//ULTRA KRAKEN CANNON
	case 341:

	motion_add(aimDirection+180,4)

	snd_play_fire(sndRoll);
	snd_play_fire(sndBloodCannon);
	snd_play_fire(choose(sndWater1,sndWater2) );

	repeat(8){
	with instance_create(x,y,Tentacle)
	{
	sprite_index=sprUltraTentacle;
	ultra=true;
	creator=other.id;
	dmg=10;//10+irandom(4)
	if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
	{
		dmg += 1;
	}
	image_angle = aimDirection+(random(60)-30)*other.accuracy
	team = other.team
	ammo = 52//24
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

	motion_add(aimDirection+180,3)

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
	visible = 0
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
	motion_add(aimDirection+(random(6)-3)*other.accuracy,5)
	image_angle = direction
	team = other.team}

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
	motion_add(aimDirection+(random(8)-4)*other.accuracy,2)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	motion_add(aimDirection+180,1.5)
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
	motion_add(aimDirection+(random(16)-8)*other.accuracy,2)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	motion_add(aimDirection+180,2)
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
	motion_add(aimDirection+(random(8)-4)+24*other.accuracy,2)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBall)
	{
	motion_add(aimDirection+(random(8)-4)*other.accuracy,2)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),ElectroBall)
	{
	motion_add(aimDirection+(random(8)-4)-24*other.accuracy,2)
	image_angle = direction
	team=other.team;

	with instance_create(x,y,ElectroBallSpawn)
	{motion_add(aimDirection+(random(8)-4),1)
	image_angle = direction}

	}

	motion_add(aimDirection+180,2)
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

	repeat(3)
	{
	with instance_create(x,y,EnemyBullet2)
	{motion_add(aimDirection+(random(16)-8)*other.accuracy,9+random(7))
	image_angle = direction
	team = other.team}
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

	repeat(5)
	{
	with instance_create(x,y,EnemyBullet2)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,11+random(5))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(7,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 3

	break;


	//HYPER GLOVE
	case 350:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)
	instance_create(x,y,Smoke)
	var hitWall = false;
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		dmg = 18;
		sprite_index=sprHeavySlash;
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
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
				if instance_exists(Player)
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2+longarms)
				image_angle = direction
				team = other.team
			}
		}
	}
	x += lengthdir_x(1,aimDirection+180)
	y += lengthdir_y(1,aimDirection+180)
	xprevious = x;
	yprevious = y;
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
	{image_angle = aimDirection+(random(30)-15)*other.accuracy
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
	visible = 0
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
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
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
	with instance_create(x+ldx,y+ldy,EraserBurst)
	{
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
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
	
	if place_meeting(UberCont.mouse__x,UberCont.mouse__y,Floor) and not place_meeting(UberCont.mouse__x, UberCont.mouse__y, Wall) {
		snd_play_fire(sndHyperLightning);
		if alarm[3]<1
		alarm[3]=max(3,alarm[3]);//imunity
		instance_create(x,y,Teleport);
		snd_play_fire(sndHyperLightning);
		repeat(5){
			with instance_create(x,y,Smoke)
			motion_add(random(360),1+random(3))
		}
    
		x=UberCont.mouse__x;
		y=UberCont.mouse__y;
		BackCont.viewx2 += lengthdir_x(20,aimDirection+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(20,aimDirection+180)*UberCont.opt_shake
		BackCont.shake += 2    

		var telepower = 1;
		if (race == 15) { //atom, add some serious power to that teleport!
			telepower = 5;
			snd_play_fire(sndLightningCannonEnd);
			repeat(5) {
				with instance_create(x,y,Lightning) {
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
					with instance_create(x,y,PlasmaBall) {
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
			instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
			
			with instance_create(x,y,Lightning)
				{image_angle = aimDirection+(random(360))*other.accuracy
				team = other.team
				ammo = 6
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle}
		}
		
		repeat(5) {
			with instance_create(x,y,Smoke)
			motion_add(random(360),1+random(3))
		}
	} else {
		ammo[wep_type[358]] += wep_cost[358];
		snd_play_fire(sndSpark1);
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	image_yscale = other.wepflip;//Line up animation with actual holding of weapon
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,2)
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

	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,20)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,Splinter)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,20)
	image_angle = direction
	team = other.team}
	
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,9+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,3)
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
		thrownByCuz = yc;
		sprite_index = wep_sprt[wep]
	}
	BackCont.viewx2 += lengthdir_x(4,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 1
	if curse
		my_health -= 7;
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
		if instance_exists(Player)
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

	motion_add(aimDirection+180,24)
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
	if instance_exists(Player)
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
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDir,1+longarms)
		image_angle = direction
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection+180,5)
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 1)
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 1)
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 2)
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
		if collision_point(x+8,y+18,Floor,false,false)//Down
		{
			with instance_create(x+8,y+14,Laser)
			{
				dmg = 2
				image_yscale += 0.1;
				image_angle = 270;
				team = t
				event_perform(ev_alarm,0)
			}
		}
		if collision_point(x+18,y+8,Floor,false,false)//Right
		{
			with instance_create(x+14,y+8,Laser)
			{
				dmg = 2
				image_yscale += 0.1;
				image_angle = 0;
				team = t
				event_perform(ev_alarm,0)
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
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
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
	with instance_create(x+ldx,y+ldy,EraserBurst)
	{
		projectileAmount = 3;
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id;
		ammo = 2
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

	motion_add(aimDirection+180,1.5)
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

	motion_add(aimDirection+180,3)
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

	motion_add(aimDirection+180,6)
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
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 1
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
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 1
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
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 1
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
		mox=UberCont.mouse__x + ldx;
		moy=UberCont.mouse__y + ldy;
		creator = other.id
		ammo = 1
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
			dmg = 16//shovel is 12 is frostglove
			longarms = 0
			if instance_exists(Player)
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2+longarms)
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
		motion_add(aimDirection,6)
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
		motion_add(aimDirection+(random(8)-4)*other.accuracy,2)
		image_angle = direction
		team=other.team;

		with instance_create(x,y,ElectroBallSpawn)
		{motion_add(aimDirection+(random(8)-4),1)
		image_angle = direction}

		}

		Sleep(10);
		motion_add(aimDirection+180,3)
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
		team = other.team}

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
	team = other.team}

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

	motion_add(aimDirection+180,1.5)
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

	with instance_create(x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),LanceShank)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,8)
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

	motion_add(aimDirection+180,2)
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
		with instance_create(x,y,Yoyo)
		{motion_add(aimDirection+(random(10)-5)*other.accuracy+offset,spd)
		image_angle = direction
		team = other.team}

		with instance_create(x,y,Yoyo)
		{motion_add(aimDirection+(random(10)-5)*other.accuracy+60+offset,spd)
		image_angle = direction
		team = other.team}

		with instance_create(x,y,Yoyo)
		{motion_add(aimDirection+(random(10)-5)*other.accuracy+120+offset,spd)
		image_angle = direction
		team = other.team}

		with instance_create(x,y,Yoyo)
		{motion_add(aimDirection+(random(10)-5)*other.accuracy+180+offset,spd)
		image_angle = direction
		team = other.team}

		with instance_create(x,y,Yoyo)
		{motion_add(aimDirection+(random(10)-5)*other.accuracy+240+offset,spd)
		image_angle = direction
		team = other.team}

		with instance_create(x,y,Yoyo)
		{motion_add(aimDirection+(random(10)-5)*other.accuracy+300+offset,spd)
		image_angle = direction
		team = other.team}
		
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
	if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,4+longarms)
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
			mox=UberCont.mouse__x;
			moy=UberCont.mouse__y;
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
			mox=UberCont.mouse__x;
			moy=UberCont.mouse__y;
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
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			with instance_create(x,y,PlayerWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 1 + other.wep_load[mywep];
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
					alarm[0] = 1 + other.wep_load[other.wep];
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
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			with instance_create(x,y,PlayerExplosionWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 1 + other.wep_load[mywep];
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
					alarm[0] = 1 + other.wep_load[other.wep];
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
		mox=UberCont.mouse__x;
		moy=UberCont.mouse__y;
		creator = other.id
		ammo = 13
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
	
	//SLUG CANNON
	case 430:

	snd_play_fire(sndFlakCannon)

	with instance_create(x,y,SlugCannonBullet)
	{
	motion_add(aimDirection+(random(10)-5)*other.accuracy,11+random(2))
	image_angle = direction
	team = other.team}

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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,5+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,8)
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
			if typ == 1 && canBeMoved
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
		var s = 17
		var am = 3;//am*am = 9
		var offsetStep = 10*accuracy;
		var offset = offsetStep*am*0.5;
		var xx = x+lengthdir_x(offset,aimDir-90)+lengthdir_x(offset*0.5,aimDir+180);
		var yy = y+lengthdir_y(offset,aimDir-90)+lengthdir_y(offset*0.5,aimDir+180);
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
	repeat(18)
	{
	with instance_create(x,y,Bullet2)
	{motion_add(aimDirection+(random(80)-40)*other.accuracy,7+random(5))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 11
	wkick = 7

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
	time = 4
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 1)
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 1)
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 2)
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

	with instance_create(x+hspeed,y+vspeed,SpinSlash)
	{
	dmg = 10
	speed = other.speed*0.5;
	direction = other.direction;
	longarms = 0
	if instance_exists(Player)
	longarms = Player.skill_got[13]+other.bettermelee
	image_angle = direction
	image_xscale = 1+(longarms*0.12);
	image_yscale = 1+(longarms*0.12);
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
	
	//SUPER SCYTHE
	case 456:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+hspeed,y+vspeed,SpinSlash)
	{
		speed = other.speed*0.5;
		direction = other.direction;
		longarms = 0
		if instance_exists(Player)
		longarms = Player.skill_got[13]+other.bettermelee
		image_angle = direction
		image_xscale = 1+(longarms*0.12);
		image_yscale = 1+(longarms*0.12);
		team = other.team
		rotation *= sign(other.wepangle);
	}
	
	with instance_create(x+hspeed,y+vspeed,SuperSpinSlash)
	{
		speed = other.speed*0.5;
		direction = other.direction;
		longarms = 0
		if instance_exists(Player)
		longarms = Player.skill_got[13]+other.bettermelee
		image_angle = direction
		image_xscale = 1+(longarms*0.12);
		image_yscale = 1+(longarms*0.12);
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection-60*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection-60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	
	with instance_create(x,y,Laser)
	{image_angle = (aimDirection-60*Player.accuracy)+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection+60*Player.accuracy),EnergySlash)
	{
		dmg = 17;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	
	with instance_create(x,y,Laser)
	{image_angle = (aimDirection+60*Player.accuracy)+(random(2)-1)*other.accuracy
	team = other.team
	event_perform(ev_alarm,0)
	}

	wepangle = -wepangle
	motion_add(aimDirection,7)
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
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,4)
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 6

	break;
	
	//flame SPLINTER GUN
	case 462:

	snd_play_fire(sndFlamerStart);
	snd_play_fire(sndSplinterGun)

	with instance_create(x,y,FlameSplinter)//5 splinters
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	repeat(2)
	{
	with instance_create(x,y,FlameSplinter)
	{motion_add(aimDirection+(random(20)-10)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,FlameSplinter)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,20+random(4))
	image_angle = direction
	team = other.team}
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
	team = other.team}

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
	explosive=2;
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
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,14)//16
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 22
	wkick = 12
	motion_add(aimDirection+180,4)
	break;
	
	//ULTRA BAZOOKA
	case 473:

	snd_play_fire(sndNukeFire);

	with instance_create(x,y,UltraRocket)
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	motion_add(aimDirection+180,2)
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
		event_perform(ev_alarm,0);
		alarm[1] = 20;
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
	motion_add(aimDirection+180,0.6)
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
	
	//ULTRA LOLLIPOP
	case 478:

	snd_play_fire(sndUltraShovel)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),UltraBigSlash)
	{
	dmg = 60//energy hammer is 50
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	image_yscale = other.wepflip;//Line up animation with actual holding of weapon
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,2)
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

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20+22,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20+22,aimDirection),GhostShank)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,3+longarms)
	image_angle = direction
	team = other.team}

	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),GhostShank)
	{
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
	ammo = 4
	time = 1
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
	
	//HEAVY SHOTGUN
	case 493:

	snd_play_fire(sndSuperSlugger)

	repeat(6)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,4+longarms)
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
	with instance_create(x,y,Bullet2)
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
		ammo = 4
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

	with instance_create(x,y,ChargeBow)
	{
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 6;
		team = other.team
		event_perform(ev_alarm,0)
	}

	break;
	
	//ULTRA BOW
	case 503:

	with instance_create(x,y,UltraChargeBow)
	{
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 5;
		team = other.team
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
			mox=UberCont.mouse__x;
			moy=UberCont.mouse__y;
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
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			snd_play_2d(sndUltraLaser,0,true);
			with instance_create(x,y,PlayerUltraWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 1 + other.wep_load[mywep];
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
					alarm[0] = 1 + other.wep_load[other.wep];
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

	move_contact_solid(aimDirection,5)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(5+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
	{
		sprite_index=sprUltraSlash;
		dmg = 30
		longarms = 0
		if instance_exists(Player)
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

	motion_add(aimDirection+180,3)

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

	move_contact_solid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(3+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(3+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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
	dmg = 27
	sprite_index=sprVeryHeavySlash;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),EnergyHammerSlash)
	{
	dmg = 23
	sprite_index=sprVeryHeavySlash;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),EnergyHammerSlash)
	{
	dmg = 23
	sprite_index=sprVeryHeavySlash;
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
	BackCont.shake += 4
	wkick = -5

	break;
	
	//SUPER FLUGGER
	case 515:

	snd_play_fire(sndSuperSlugger)

	motion_add(aimDirection+180,3)

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

	motion_add(aimDirection+180,1)

	BackCont.viewx2 += lengthdir_x(55,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(55,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 16
	wkick = 8

	break;
	
	//CLUB
	case 517:

	snd_play_fire(sndHammer)

	instance_create(x,y,Dust)

	move_contact_solid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
		image_xscale -= 0.15;
		image_yscale -= 0.15;
		dmg = 4;
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
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

	motion_add(aimDirection+180,3)

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
	
	//MINIGUN
	case 522:

	snd_play(sndSwarmRapid,0.2,true,false,1,false,false,0.7);

	with instance_create(x,y,SwarmBolt)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,7)
	image_angle = direction
	team = other.team}
	motion_add(aimDirection+180,0.3)
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
	with Floor
	{
		with instance_create(x,y,Lightning)
		{image_angle = random(360);
			accuracy = 60;
			branch = 100;
			iframeskip = max(0,iframeskip-0.04);
		team = 2
		ammo = 12;//24
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}
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
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),Slash)
	{
		dmg = 12
		sprite_index = sprHeavySlash
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+60*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),Slash)
	{
		dmg = 12
		sprite_index = sprHeavySlash
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-60*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),Slash)
	{
		dmg = 8
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-120*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),Slash)
	{
		dmg = 8
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+120*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
		dmg = 6;
		longarms = 0
		if instance_exists(Player)
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
		visible = 0
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
		visible = 0
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
		visible = 0
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
	
	motion_add(aimDirection+180,2)
	
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

	motion_add(aimDirection+180,4)

	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection+(random(8)-4)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection+10*other.accuracy+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection+20*other.accuracy+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection-10*other.accuracy+(random(4)-2)*other.accuracy,2)
	image_angle = direction
	team = other.team}
	with instance_create(x,y,BouncerRocket)
	{motion_add(aimDirection-20*other.accuracy+(random(4)-2)*other.accuracy,2)
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

	motion_add(aimDirection+180,3)

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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,2)
	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 8

	break;
	
	//BLOOD BULLET SHOTGUN
	case 539:

	snd_play_fire(sndSlugger)
	snd_play_fire(sndBloodHammer);

	repeat(7)
	{
	with instance_create(x,y,HeavyBloodBullet)
	{motion_add(aimDirection+(random(40)-20)*other.accuracy,12+random(6))
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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,6)
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 12
	wkick = 8

	break;
	
	//SUPER LIGHTNING CROSSBOW
	case 545:

	snd_play_fire(sndSuperCrossbow)

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

	motion_add(aimDirection+180,1)

	BackCont.viewx2 += lengthdir_x(60,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(60,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 15
	wkick = 8

	break;
	
	//SPLIT SEEKER PISTOL
	case 546:

	snd_play_fire(sndSeekerPistol)


	with instance_create(x,y,SplitSeekerBolt)
	{motion_add(aimDirection+(random(20)-10)-10*other.accuracy,2+random(3))
	image_angle = direction
	team = other.team}
	with instance_create(x,y,SplitSeekerBolt)
	{motion_add(aimDirection+(random(20)-10)+10*other.accuracy,2+random(3))
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

	repeat(20)
	{
	with instance_create(x,y,BloodBullet)
	{motion_add(aimDirection+(random(80)-40)*other.accuracy,5+random(6))
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	wkick = 7

	break;
	
	//BLOOD HAMMER
	case 548:

	snd_play_fire(sndBloodHammer)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),BloodSlashRetail)
	{
		owner = other.id;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,6)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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
	motion_add(aimDirection+180,0.6)
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

	motion_add(aimDirection,2)

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
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,Burst)
	{
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
		event_perform(ev_alarm,0) 
	}
	with instance_create(x,y,Burst)
	{
		aimOffset = 15*Player.accuracy;
		creator = other.id
		ammo = 3
		time = 2
		team = other.team
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

	repeat(14)
	{
	with instance_create(x,y,Bullet2Heavy)
	{motion_add(aimDirection+(random(50)-25)*other.accuracy,14+random(6))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,4)

	BackCont.viewx2 += lengthdir_x(17,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(17,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 18
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
	{motion_add(aimDirection+(random(4)-2)*other.accuracy,22)
	image_angle = direction
	team = other.team}

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
		motion_add(aimDirection+(random(8)-4)*other.accuracy,1.8)
		image_angle = direction
		team=other.team;

		with instance_create(x,y,ElectroBallSpawn)
		{motion_add(aimDirection+(random(8)-4),1)
		image_angle = direction}

		}

		Sleep(10);
		motion_add(aimDirection+180,6)
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

	snd_play_fire(sndMinigun)
	with instance_create(x,y,Shell)
	motion_add(aimDirection+other.right*100+random(80)-40,3+random(2))

	with instance_create(x,y,Bullet1Toxic)
	{motion_add(aimDirection+(random(26)-13)*other.accuracy,16)
	image_angle = direction
	team = other.team}
	motion_add(aimDirection+180,0.6)
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
		if !exists
		{
			snd_play_2d(sndWazerStart,0,true);
			with instance_create(x,y,PlayerToxicWazer)
			{
				owner = other.id;
				team = other.team;
				mywep = other.wep
				alarm[0] = 1 + other.wep_load[mywep];
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
					alarm[0] = 1 + other.wep_load[other.wep];
			}
		}
	}
	break;
	
	//GOLDEN BOW
	case 567:

	with instance_create(x,y,ChargeBow)
	{
		boltSprite = sprGoldBolt;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 5;//6
		team = other.team
		event_perform(ev_alarm,0)
	}

	break;
	
	//ULTRA SAWED-OFF SHOTGUN
	case 568:
	snd_play_fire(sndUltraShotgun)
	snd_play_fire(sndSawedOffShotgun)

	repeat(18)
	{
	with instance_create(x,y,Bullet5)
	{motion_add(aimDirection+(random(80)-40)*other.accuracy,8+random(6))//7 5
	image_angle = direction
	team = other.team}
	}

	BackCont.viewx2 += lengthdir_x(14,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 14
	wkick = 7

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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,1.3)
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

	repeat(60)
	{
	with instance_create(x,y,Bullet2Heavy)
	{motion_add(aimDirection+(random(80)-40)*other.accuracy,14+random(14))
	image_angle = direction
	team = other.team}
	}

	motion_add(aimDirection+180,8)

	BackCont.viewx2 += lengthdir_x(25,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(25,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 25
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

	with instance_create(x,y,ChargeBow)
	{
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		bowOffset = 5;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		bowOffset = -5;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		bowOffset = 10;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,ChargeBow)
	{
		bowOffset = -10;
		maxcharge=3;//maxrate
		creator = other.id
		chargetime = 7;
		team = other.team
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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
	motion_add(aimDirection+180,4)
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
		repeat(12 + (Player.skill_got[17] * 4))
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,4+longarms)
	image_angle = direction
	team = other.team}
	

	repeat(4)
	{
		with instance_create(x,y,Bullet2)
		{motion_add(aimDirection+(random(20)-30)*other.accuracy,13+random(6))
		image_angle = direction
		team = other.team}
	}
	
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
	ammo = 8
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
	
	//TERMITE INJECTOR
	case 590:

	snd_play_fire(choose(sndSword1,sndSword2))
	snd_play(sndMeatExplo);

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),InfestSlash)
	{
		owner = other.id;
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,4+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,2)
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
	if instance_exists(Player)
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
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+(random(10)-5)*other.accuracy,3+longarms)
	image_angle = direction
	team = other.team}

	wepangle = -wepangle
	motion_add(aimDirection,1)
	BackCont.viewx2 += lengthdir_x(10,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection)*UberCont.opt_shake
	BackCont.shake += 3
	wkick = -8

	break;
	
	//HEAVY CLUB
	case 594:

	snd_play_fire(sndFlail);

	instance_create(x,y,Dust)

	move_contact_solid(aimDirection,1)

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
	{
		dmg = 7;
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
		image_angle = direction
		team = other.team
	}
	motion_add(aimDirection,4)
	wepangle = -wepangle
	BackCont.viewx2 += lengthdir_x(13,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,aimDirection)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = -7

	break;
	
	//AUTO LIGHTNING CROSSBOW
	case 595:

	snd_play_fire(sndCrossbow)

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
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
		image_angle = direction
		image_yscale = other.wepflip;//Line up animation with actual holding of weapon
		team = other.team
	}

	wepangle = -wepangle
	motion_add(aimDirection,4)
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
	motion_add(aimDirection+180,1)
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
	motion_add(aimDirection+180,1)
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
		if instance_exists(Player) && Player.ultra_got[16]
		{
			dmg +=2;
		}

		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),BloodSlashRetail)
	{
		owner = other.id;
		dmg = 18
		if instance_exists(Player) && Player.ultra_got[16]
		{
			dmg +=2;
		}
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+60*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team
	}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),BloodSlashRetail)
	{
		owner = other.id;
		dmg = 18
		if instance_exists(Player) && Player.ultra_got[16]
		{
			dmg +=2;
		}
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-60*other.accuracy,2+longarms)
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
	motion_add(aimDirection+180,1)
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
		laserhit=40+(Player.skill_got[17]*5);
		sprite_index=sprBouncingLaser;
		image_yscale += 1.6
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
	dmg = 25
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),SpikeSlash)
	{
	dmg = 22
	longarms = 0
	if instance_exists(Player)
	longarms = (Player.skill_got[13]+other.bettermelee)*3
	motion_add(aimDirection+60*other.accuracy,2+longarms)
	image_angle = direction
	team = other.team}
	with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),SpikeSlash)
	{
	dmg = 22
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
	
	//SPLINTER LANCE
	case 604:

	snd_play_fire(choose(sndSword1,sndSword2))

	instance_create(x,y,Dust)

	with instance_create(x+lengthdir_x(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(5+((Player.skill_got[13]+bettermelee)*20),aimDirection),SplinterLanceShank)
	{
		dmg = 14;
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,4+longarms)
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

	motion_add(aimDirection+180,2)
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

		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Shank)
		{
		dmg = 6
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,2+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+30*Player.accuracy),Shank)
		{
		dmg = 6
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+30*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-30*Player.accuracy),Shank)
		{
		dmg = 6
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection-30*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection+60*Player.accuracy),Shank)
		{
		dmg = 6
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection+60*other.accuracy,2+longarms)
		image_angle = direction
		team = other.team}
		
		with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection-60*Player.accuracy),Shank)
		{
		dmg = 6
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

	motion_add(aimDirection+180,8)
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

	motion_add(aimDirection+180,6)
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

	motion_add(aimDirection+180,6)
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

	snd_play_fire(sndDiscgun)

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
	with instance_create(x,y,Tentacle)
	{
		image_angle = aimDirection + tentacleAim*other.accuracy
		creator=other.id;
		team = other.team
		ammo = 35
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
		aimDirection += 15
	}

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 5

	break;
	
	//DISC ERASER
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

	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5
	wkick = 6

	break;
	
	//BOUNCER CROSSBOW
	case 621:

	snd_play_fire(sndCrossbow)

	with instance_create(x,y,BouncerBolt)
	{motion_add(aimDirection+(random(6)-3)*other.accuracy,24)
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
		mox=UberCont.mouse__x;
		moy=UberCont.mouse__y;
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

	motion_add(aimDirection+180,2)

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
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+other.bettermelee)*3
		motion_add(aimDirection,4+longarms)
		image_angle = direction
		team = other.team}
		ofAngle = -90;
	}

	wepangle = -wepangle
	motion_add(aimDirection,2)
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 1)
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
		while (!place_meeting(bx,by,Wall) && count < 500 || count < 1)
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

	motion_add(aimDirection+180,2)
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
	
	}//end of switch part 2!
}
