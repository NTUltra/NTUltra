if(instance_exists(Player)){
	if isog
	{
		var um = GetPlayerUltramod()
		var isExplosive = object_index == LaserExplosive;
		if um == ultramods.laserBullet
		{
			with instance_create(x,y,Shell)
			motion_add(other.image_angle+Player.right*100+random(50)-25,2+random(2))
			if isExplosive
			{
				snd_play_fire(sndTripleMachinegun);
				var acc = scrGetPlayerAccuracy();
				with instance_create(x,y,Bullet1Explosive)
				{motion_add(other.image_angle-(5*acc),14)
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,Bullet1Explosive)
				{motion_add(other.image_angle+(5*acc),14)
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				instance_destroy(id,false);
			}
			else if isUltra
			{
				snd_play_fire(sndUltraPistol);
				var acc = scrGetPlayerAccuracy();
				with instance_create(x,y,Bullet4)
				{motion_add(other.image_angle-(5*acc),16)
					scrCopyWeaponMod(other);
					dmg -= 2;
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,Bullet4)
				{motion_add(other.image_angle+(5*acc),16)
					scrCopyWeaponMod(other);
					dmg -= 2;
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				instance_destroy(id,false);
			exit;
			}
			else if laserhit > 0 && instance_exists(Player)
			{
				with instance_create(x,y,BouncerBurst)
				{
					ultramodded = true;
					pspeed += 3;
					creator = Player
					ammo = other.laserhit
					time = 1
					team = other.team
					event_perform(ev_alarm,0) 
				}
				/*
				snd_play_fire(sndBouncerFire);
				var acc = scrGetPlayerAccuracy();
				with instance_create(x,y,Bullet3)
				{motion_add(other.image_angle-(5*acc),14)
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,Bullet3)
				{motion_add(other.image_angle+(5*acc),14)
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}*/
				instance_destroy(id,false);
				exit;
			}
			else if object_index == MorphLaser
			{
				snd_play_fire(sndCuber);
				with instance_create(x,y,MorphBullet)
				{motion_add(other.image_angle+5,18)
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
				with instance_create(x,y,MorphBullet)
				{motion_add(other.image_angle-5,18)
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
			}
			else
			{
				snd_play_fire(sndHeavyMachinegun);
				with instance_create(x,y,HeavyBullet)
				{motion_add(other.image_angle,16)
					scrCopyWeaponMod(other);
				image_angle = direction
				team = other.team
				alarm[11] = 0;}
			}
		
			instance_destroy(id,false);
			exit;
		}
		else if um == ultramods.laserBolt
		{
			var thebolt = Bolt;
			if laserhit > 0
				thebolt = BouncerBolt;
			if isExplosive
				thebolt = ExplosiveBolt;
			if isUltra
			{
				snd_play_fire(sndUltraCrossbow);
			}
			else
			{
				snd_play_fire(sndCrossbow);	
			}
			UberCont.ultramodSwap = false;
			with instance_create(x,y,thebolt)
			{motion_add(other.image_angle,24)
				dmg = round(dmg*0.4);
				scrCopyWeaponMod(other);
			image_angle = direction
			team = other.team
			alarm[11] = 0;}
			if laserhit > 10
			{
				snd_play(sndSuperCrossbow);
				var acc = scrGetPlayerAccuracy();
				with instance_create(x,y,thebolt)
				{
					motion_add(other.image_angle+5*acc,24)
					dmg = round(dmg*0.4);
					scrCopyWeaponMod(other);
					image_angle = direction
					team = other.team
					alarm[11] = 0;
				}
				with instance_create(x,y,thebolt)
				{
					motion_add(other.image_angle-5*acc,24)
					dmg = round(dmg*0.4);
					scrCopyWeaponMod(other);
					image_angle = direction
					team = other.team
					alarm[11] = 0;
				}
				with instance_create(x,y,thebolt)
				{
					motion_add(other.image_angle+10*acc,24)
					dmg = round(dmg*0.4);
					scrCopyWeaponMod(other);
					image_angle = direction
					team = other.team
					alarm[11] = 0;
				}
				with instance_create(x,y,thebolt)
				{
					motion_add(other.image_angle-10*acc,24)
					dmg = round(dmg*0.4);
					scrCopyWeaponMod(other);
					image_angle = direction
					team = other.team
					alarm[11] = 0;
				}
				with instance_create(x,y,thebolt)
				{
					motion_add(other.image_angle+15*acc,24)
					dmg = round(dmg*0.4);
					scrCopyWeaponMod(other);
					image_angle = direction
					team = other.team
					alarm[11] = 0;
				}
				with instance_create(x,y,thebolt)
				{
					motion_add(other.image_angle-15*acc,24)
					dmg = round(dmg*0.4);
					scrCopyWeaponMod(other);
					image_angle = direction
					team = other.team
					alarm[11] = 0;
				}
			}
		
			instance_destroy(id,false);
			UberCont.ultramodSwap = true;
			exit;
		}
	}
	isog = false;
	if (aimed=false && team == 2)
	{
		aimed=true;
		image_angle = scrAimAssistLaser(image_angle);
	}
}

var dir;
dir = 0
//if !place_meeting(x,y,Wall)
var pierce = defaultPierce;
var modBoost = 12;
	with Player
	{
		if skill_got[17]
			pierce += 16;
		//Projectile Speed
		if skill_got[30] == 1//Power craving
			modBoost = 16;
	}
	if Mod1 == 11
		pierce += modBoost;
	if Mod2 == 11
		pierce += modBoost;
	if Mod3 == 11
		pierce += modBoost;
	if Mod4 == 11
		pierce += modBoost;
var hit;
do {
	hit = instance_place(x,y,hitme);
	x += lengthdir_x(1,image_angle);
	y += lengthdir_y(1,image_angle);
	dir += 1;
}
until ((dir > pierce && hit != noone && hit.team != team) || collision_point(x,y,Wall,false,false) || dir > 320)
/*
while !((place_meeting(x,y,hitme) and dir > pierce) or collision_point(x,y,Wall,false,false) or dir > 320)
{
	x += lengthdir_x(1,image_angle);
	y += lengthdir_y(1,image_angle);
	dir += 1;
}
*/
if laserhit>0// && random(3)<1
{
	canSmoke = false;
	var hitStyle = 0;
	var o = 1;
	dir = 0;
	/*
	while (!collision_point(x,y,Wall,false,false) or dir > 160)
	{
		x += lengthdir_x(1,image_angle);
		y += lengthdir_y(1,image_angle);
		dir += 1;
	}*/
	while collision_point(x,y,Wall,false,false) && dir < 16//place_meeting(x,y,Wall)
	{
		x += lengthdir_x(1,image_angle+180) y += lengthdir_y(1,image_angle+180);
		dir ++;
	}
	var hit = instance_place(x,y,hitme);
	if hit != noone && hit.team != team && hit.team != 0
	{
		hitStyle = choose(1,2);	
	}
	if collision_point(x,y+o,Wall,false,false) || collision_point(x,y-o,Wall,false,false)
		hitStyle = 1;//Vertical
	if collision_point(x+o,y,Wall,false,false) || collision_point(x-o,y,Wall,false,false)
	{/*
		if hitStyle == 1
		{
			var c = dcos(image_angle);
			if abs(c) < 0.5
				hitStyle = 1;
			else if abs(c) > 0.5
				hitStyle = 2;
			else
				hitStyle = 3;
		}
		else*/
			hitStyle = 2;//Horizontal
	}
	if hitStyle != 0// && collision_point(x,y,Floor,false,false)
	{
		var maxDis = 8;
		var dis = 0;
		while dis < maxDis && collision_point(x,y,Wall,false,false)
		{
			x += lengthdir_x(1,image_angle+180); y += lengthdir_y(1,image_angle+180);
			dis += 1;
		}
		BackCont.shake += 1.5
		x += lengthdir_x(1,image_angle+180); y += lengthdir_y(1,image_angle+180);
	    with instance_create(x,y,Laser)
	    {
			image_yscale = max(image_yscale - 0.1, other.image_yscale - 0.1);
			/*
			if place_meeting(x,y,Wall)//Might not fit in this spot
				image_yscale = other.image_yscale - 0.1;
			*/
			if hitStyle == 2
				image_angle = 180-other.image_angle;
			else
				image_angle = other.image_angle*-1
			
			/*
			while collision_point(x,y,Wall,false,false)//place_meeting(x,y,Wall)
			{
				x += lengthdir_x(1,other.image_angle+180) y += lengthdir_y(1,other.image_angle+180)
			}*/
			isog = false;
		    team = other.team
			sprite_index=sprBouncingLaser;
		    laserhit=other.laserhit-1;
			//dir = 0;
			//do {x += lengthdir_x(1,image_angle) y += lengthdir_y(1,image_angle) dir += 1}
			//until place_meeting(x,y,Wall) or dir > 320
			alarm[0] = 1;
		}
		laserhit=0;
		if instance_exists(Player) && Player.skill_got[17]
			snd_play(sndLaserBounceUpg,0.3,false,true);
		else
			snd_play(sndLaserBounce,0.3,false,true);
		with instance_create(x,y,ImpactFX)
		{
			if hitStyle == 2
				image_angle = 0;
			else
				image_angle = 90;
			image_yscale = choose(1,-1);
			sprite_index = sprBouncingLaserBounce;	
		}
	}
} else if canSmoke 
	instance_create(x,y,Smoke)
//if sprite_index != sprBouncingLaserBounce
//	instance_create(x,y,Smoke)
alarm[0] = 2
scrForcePosition60fps();
image_xscale = point_distance(x,y,xstart,ystart)*0.5