function scrModHit(projectileRef) {
	if !instance_exists(Player) || team == 2
		exit;
	// scrSheepHit();
	//Sedatives
	var wp = projectileRef.wepFire;
	if Player.ultra_got[100] && team != projectileRef.team && my_health > 0 && wp != -1
	{
		target = noone;
		walk = 0;
		var amount = 1;
		if wp != 0
			amount = ceil(Player.wep_load[wp]*0.6);
		with projectile
		{
			if wepFire == wp
				wepFire = -1;
		}
		projectileRef.wepFire = 0;
		if alarm[1] > 1 && alarm[1] < 30
		{
			speed *= 0.6;
			alarm[1] += amount;
			alarm[11] += amount;
			with instance_create(x,y-6,SleepFX) {
				if !other.isSnooze
					owner = other.id;
				depth = other.depth - 1;
				alarm[0] = max(2,amount+1);
			}
			isSnooze = true;
		}
	}
	//ROIDS KNOCKBACK
	if Player.ultra_got[26] && team != 0 && gettingKnocked < 1
	{
		gettingKnocked = 5;
		BackCont.shake += 2
		var shithead = id;
		var s = 2;
		with Player
		{
			var al = 6;//weapon types total
			var unequippedAmmoPercentage = 0;
			for (var i = 1; i < al; i++) {
				unequippedAmmoPercentage += ammo[i] / typ_amax[i];
			}
			if skill_got[10] //BACK MUSCLE
				unequippedAmmoPercentage *= 1.4;
		}
		s += (unequippedAmmoPercentage*4);
		var d = point_direction(x,y,Player.x,Player.y) + 180;
		var md = projectileRef.direction;
		if !projectileRef.canBeMoved
			md = projectileRef.image_angle;
		d = md + (angle_difference(md,d)*0.5);
		with instance_create(x,y,Knockback)
		{
			target = shithead;
			pushStrength = s;
			pushDirection = d;
			pushStartX = target.x;
			pushStartY = target.y;
			var si = target.mySize;
			if si == 4
				si = 5;
			pushStrength = pushStrength/max(1,si*0.6);
			pushStrength = min(pushStrength,32);
			pushX = target.x + lengthdir_x(pushStrength,pushDirection);
			pushY = target.y + lengthdir_y(pushStrength,pushDirection);
		}
	}
	//RUN THIS CODE INSIDE OF ENEMY OBJET IN THE PROJETILE COLLISION EVENT
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
	8 swarm
	9 bouncer
	10 shotgun
	11 projectile speed
	12 reload speed
	13 homing
	14 radiation
	15 splinter
	16 morph
	17 pickups
	18 weps
	*/
	while (Player.moddelay < 1)
	{
		if scrIsCrown(29)//Crown of purity
		{
			Player.moddelay += 30;
			return;
		}
		var r = 1;
		var pc = false;
		var itemRate = 8;
		var wepRate = 2
		var len = 10;
		with Player
		{
		    if skill_got[30]//power craving
			{
				if race == 25
					moddelay += 12;
				else
					moddelay += 16;
				wepRate += 1;
				itemRate += 1.5;
				len += 2;
				pc = true;
			}
		    else
				moddelay += 30;
			if ultra_got[65]
			{
				moddelay -= 2;
				r = 2;
			}
	    }
		repeat(r)
		with projectileRef {//PROJECTILE

			var newfrost = true;
			var myFrost = noone;
			var r = 3 + Player.skill_got[30];
			var i = 0;
			repeat(r)
			{
				//HACKY SHIT SHOULD HAVE BEEN AN ARRAY WE WILL NEVER REFACTOR
				var m = Mod1;
				switch (i)
				{
					case 0:
						m = Mod1;
					break;
					case 1:
						m = Mod2;
					break;
					case 2:
						m = Mod3;
					break;
					case 3:
						m = Mod4;
					break;
				}
				i++;
			//MOD 1
			switch (m){//if you see this pls report to me what weapon you just fired!

				case 1:// GAS EM!

				snd_play(sndToxicBoltGas,0,true);
				repeat(2)
				with instance_create(other.x,other.y,ToxicThrowerGas)
					motion_add(random(360),1+random(2))
				break;

				case 2://EXPLODE!
				snd_play(sndExplosionS,0,true);
				with instance_create(other.x+lengthdir_x(16,random(360)),other.y+lengthdir_x(16,random(360)),SmallExplosion)//SMALL EXPLOSIONS CAUSE THIS IS OP AS FUCK
					dmg -= choose(1, 1, 2);
				break;

				case 3://burn!
				snd_play(sndFlare,0,true);
				repeat(2)
				with instance_create(other.x,other.y,Flame){
					//image_speed = 0.5;//0.6 for regular flame from flame shotguns
					motion_add(random(360),2+random(2))
					team=2;
				}
				break;

				case 4:
					//freeze bitch!
				    if newfrost{
				        with other{//enemy
							scrFreezeTarget(7);
						}
				        newfrost=false;
				    }
				    else
				    {
					    with myFrost
							debrisAmount+=3;
					    with other
					    {
					        alarm[11]+=10;
					        if alarm[1] > 0
					                alarm[1] += 10;
					    }
					}
				break;

				case 5:
					snd_play(sndMeatExplo,0,true);
					instance_create(other.x+lengthdir_x(8,random(360)),other.y+lengthdir_x(8,random(360)),SmallMeatExplosion);
					with instance_create(other.x,other.y,BloodBullet)
					{
						ignoreMe = other.id;
						motion_add(random(360),8);
						image_angle = direction
						team = 2;
					}
				break;

				case 6://ELECTROCUTION!
					snd_play(choose(sndSpark1,sndSpark2),0,true);
					var nearest = noone;
					if instance_exists(enemy) && instance_number(enemy) > 1
						nearest = instance_nearest_notme(x,y,enemy);
					with instance_create(other.x,other.y,Lightning)
					{
						if nearest != noone && instance_exists(nearest)
							image_angle = point_direction(x,y,nearest.x,nearest.y)+random(14)-7;//Instance nearest not me?
						else
							image_angle = random(360);
						accuracy --;
						team = 2
						ammo = len + 2;
						event_perform(ev_alarm,0)
						with instance_create(x,y,LightningSpawn)
						image_angle = other.image_angle
					}
				break;

				case 7://TENTACLES!?
				snd_play(sndRoll,0,true);
				if !sound_isplaying(sndWater1) && !sound_isplaying(sndWater2)&&random(3)<1
					snd_play(choose(sndWater1,sndWater2),0,true);

				with other {
					var nearest = noone;
					if instance_exists(enemy) && instance_number(enemy) > 1
						nearest = instance_nearest_notme(x,y,enemy);
					with instance_create(x,y,Tentacle)
					{
						if nearest != noone && instance_exists(nearest)
							image_angle = point_direction(x,y,nearest.x,nearest.y)+random(14)-7;//Instance nearest not me?
						else
							image_angle = random(360);
						accuracy --;
						creator=other.id;
						team = 2//Player.team
						ammo = len + 1;
						event_perform(ev_alarm,0)
						visible = 0
						with instance_create(x,y,LightningSpawn)
						{
							sprite_index=sprTentacleSpawn
							image_angle = other.image_angle
						}

						repeat(2)
						{
						    with instance_create(x,y,FishBoost)
						    {
								motion_add( random(360),2+random(4) );
						    }
						}
					}
				}
				break;

				case 8://swarm
					snd_play(sndSwarmRapid,0.05,true);
					repeat(2)
					with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),SwarmBolt)
					{
						team = 2;
						direction=random(360);
						hits = max(1,hits-1);
					}
				break;

				case 9://bouncer
				snd_play(sndBouncerHitWall,0.05,true);
				repeat(2)
				with instance_create(other.x+lengthdir_x(4,random(360)),other.y+lengthdir_x(4,random(360)),Bullet3)
				{
					motion_add(random(360),5.2)
					image_angle = direction
					team = 2
					alarm[0] = 7;
				}
				break;

				case 10://shotgun

				snd_play(sndShotgun,0.05,true);
				repeat(3)
				{
					with instance_create(other.x,other.y,Bullet2)
					{
						motion_add(random(360),10+random(5))
						image_angle = direction
						team = 2
						alarm[0] = 5;
						alarm[1] += 4;
					}
				}
				break;

				case 14://Radiation
				snd_play(sndRadMod,0.2,true);
				repeat(2)
					with instance_create(x,y,PlutoFX)
					{
						motion_add(random(360),4);
					}
				if other.raddrop != 0
					other.raddrop += 6;

				break;

				case 15://SPLINTER

				snd_play(sndSplinterMinigun,0.05,true,false,2,false,false,0.7);
				repeat(3)
				{
					with instance_create(other.x,other.y,Splinter)//5 splinters
					{
						motion_add(random(360),20+random(4))
						image_angle = direction
						team = 2;
						alarm[2] = 2;
					}
				}

				break;

				case 16://MORPH
					instance_create(other.x,other.y,Morph)
				break;
	
				case 17://DROPS
					scrDrop(itemRate,0);
				break;
	
				case 18://GUNS
					scrDrop(0,wepRate);
				break;

				}
			}
		}
	}
}
