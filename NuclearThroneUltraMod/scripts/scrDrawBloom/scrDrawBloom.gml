function scrDrawBloom() {
	if !surface_exists(bloomSurface)
	{
		bloomSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
	}
	var ba = 0.7;
	var vx = camera_get_view_x(view_camera[0])
	var vy = camera_get_view_y(view_camera[0])
	//if instance_count>2000 emergancy when there is just too much going on
	//exit;
	///draw_set_blend_mode(bm_add)
	surface_set_target(bloomSurface);
	draw_clear_alpha(c_black,0);
	if scrIsCrown(6) {
		with chestprop {
			draw_sprite_ext(sprite_index,1,x - vx,y - vy,1.5,1.5,image_angle,c_lime,ba);	
		}
	}
	if instance_exists(Player){
	with Bullet1
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with MicroBullet
	{
		draw_set_alpha((Player.ultra_got[28]*0.3)+ba)
		draw_line_width(
		lerp(xstart - vx ,x - vx,lp),
		lerp(ystart - vy,y - vy,lp),
		x - vx,y - vy,3 - lp);
	}
	draw_set_alpha(1);
	with DistanceScaleBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,imagexscale*2,imageyscale*2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with Bullet1Toxic
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with Bullet1Explosive
	draw_sprite_ext(sprBullet1,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with RogueBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with Bullet8//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with BloodBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with Bullet4
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with HorrorBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with FrostFlakBullet
	draw_sprite_ext(sprite_index,1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with BouncerFlakBullet
	draw_sprite_ext(sprite_index,1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with OExplosion
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	}
	with PlutoFX
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,image_yscale,image_angle,c_white,ba)
	
	
	with MorphSlash//the only melee with bloom cause I can
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with PlantSonicBoom
	draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,1.25,1.25,image_angle,c_white,ba)
	with ElementorWind
	draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,1.25,1.25,image_angle,c_white,ba)
	with HorrorMoney
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1.5,1.5,image_angle,c_white,ba)
	with PartnerBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Partner
	{
		draw_sprite_ext(sprPlasmaBall,0,x - vx,y - vy,1,1,image_angle,c_white,ba);
		if gammaGuts {
			if dealingGuts
				draw_sprite_ext(sprGammaGuts,0,x - vx,y - vy,1.5,1.5,image_angle,c_white,1);
			else
				draw_sprite_ext(sprGammaGuts,0,x - vx,y - vy,1.5,1.5,image_angle,c_white,ba);
		}
	}
	with ToxicGas
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with ToxicThrowerGas
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Deflect
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with BallBossShield
	{
		if visible
		{
			if object_index == BallBossShield
				draw_sprite_ext(sprite_index,-1,x - vx+lengthdir_x(image_angle+180,16),y - vy+lengthdir_y(image_angle+180,16),2,2,image_angle,c_white,ba);
			else
				draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba);
		}
	}
	with Bullet2//PELLETS
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1+imageXscale,1+imageYscale,image_angle,c_white,ba)
	with Bullet6//FLAME PELLETS
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Bullet7//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1+imageXscale,1+imageYscale,image_angle,c_white,ba)
	with DirectorGrenade//DIRECTOR
	draw_sprite_ext(sprDirectorGrenadeBloom,0,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with RedirectFX//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Bullet9//FLAME DIRECTOR PELLETS
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Bullet5
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	//with Flames
	//draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with DiscoBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with SheepHyperDashTrail
	draw_sprite_ext(bloomSprite,-1,x - vx,y - vy,2,2,image_angle,c_white,(ba)*image_alpha)
	if instance_exists(Player)
	{
		with Rage{
		draw_sprite_ext(bloomSpr,image_index,x - vx,y - vy,1,1,image_angle,c_white,clamp(Player.rage*0.0022,0,1))}

		with AngelDeflect//ANGEL PROTECTOR ULTRA A
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1,1,image_angle,c_white,(ba*0.35)*Player.speed);

		with Bullet3//bouncer
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d


		with FreezeBullet
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d


		with HeavyBullet
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

		with FatBullet
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
		
		with Morph
		{
			if visible
			{
				if Player.skill_got[17]
					draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,1);
				else
					draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1.8,1.8,image_angle,c_white,1);
			}
		}
	}
	with DiscoBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with PlasmaBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,ba)
	with BouncerPlasmaBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with BouncerPlasmaBallBig
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with RedirectorPlasmaBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with ElectroBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with ElectroBallBig
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with PlasmaFX
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with MiniPlasmaBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,ba)
	with LaserCannon
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,ba)
	with Lightning
	{
		var al = array_length(lightningList);
		if al > 0 && alarm[0] < 1
		{
			for (var i = 0; i < al; i++) {
				draw_sprite_ext(sprite_index,-1,lightningList[i].xx - vx,lightningList[i].yy- vy,lightningList[i].xs,image_yscale,lightningList[i].ang,c_white,ba + bloom)
			}
			draw_sprite_ext(sprLightningEnd,-1,lightningList[al-1].xx - vx,lightningList[al-1].yy- vy,1,image_yscale*0.5,lightningList[al-1].ang,c_white,ba)
		}
	}

	with HorrorBeam
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,image_yscale*2,image_angle,c_white,ba)
	with HorrorBigBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale + 0.2,image_yscale + 0.2,image_angle,c_white,ba)
	with BecomeHorrorBigBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale + 0.2,image_yscale + 0.2,image_angle,c_white,ba)
	with FlakBullet
	draw_sprite_ext(sprite_index,1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with ExplosiveFlakBullet
	draw_sprite_ext(sprFlakBullet,1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with SlugCannonBullet
	draw_sprite_ext(sprite_index,1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with UltraFlakBullet
	draw_sprite_ext(sprite_index,1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	
	with AssassinBoss
	{
		var ds = ds_list_size(afterImage);
		for (var i = 0; i <  ds; i++) {
			var aimage = afterImage[| i];
			draw_sprite_ext(aimage.sp,aimage.ii,aimage.xx - vx,aimage.yy- vy,aimage.xs,1,0,c_white,clamp(aimage.time + 0.2,0.2,1));
		}	
	}
	with SuperFlakBullet
	draw_sprite_ext(sprite_index,1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with SuperBouncerFlakBullet
	draw_sprite_ext(sprite_index,1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with PlasmaBig
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with PlasmaHuge
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with PlasmaImpact
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,ba)
	with MiniPlasmaImpact
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,ba)
	with EnemyBullet3
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EnemyBullet5
	draw_sprite_ext(sprEnemyBullet4,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EnemyBouncerBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Slug
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1+imageXscale,1+imageYscale,image_angle,c_white,ba)
	with SlashShotgunPrep
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Ray
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,3,3,image_angle,c_white,ba)
	with SwordBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with LavaBubble
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with GunWarrant
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EuphoriaShield
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EuphoriaShieldEnd
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Disc
	draw_sprite_ext(sprite_index,-1,xprevious,yprevious,1,1,image_angle,c_white,ba)
	with MiniFlameCannonBall
	draw_sprite_ext(bloomSprite,image_index,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with SuperFlameCannonBall
	draw_sprite_ext(sprSuperFlameCannonBallBloom,image_index,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with FlameCannonBall
	draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with HotDrakeFlameCannon
	draw_sprite_ext(sprHotDrakeFlameCannonBloom,image_index,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Meteor
	draw_sprite_ext(sprite_index,image_index,x - vx,dy,scale*1.5,scale*1.5,image_angle,c_white,ba);
	with HotDrakeSplitBall
	draw_sprite_ext(sprHotDrakeSplitBallBloom,image_index,x - vx,y - vy,3,2,image_angle,c_white,ba)

	with InvertedHotDrakeSplitBall
	draw_sprite_ext(sprInvertedHotDrakeSplitBallBloom,image_index,x - vx,y - vy,3,3,image_angle,c_white,ba)

	//with LavaBallEnemy
	////draw_sprite_ext(sprHotDrakeFlameCannonBloom,image_index,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with WeaponCharge
	draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,2,2,image_angle,c_white,ba)

	if !instance_exists(PlayerInPortal)
	with Player
	{/*
		if race == 24
		{
			draw_sprite_ext(mushroomhead,-1,x - vx,y - vy+1,right*1.4,image_yscale*1.4,angle,ElementorHead.col,0.5)
		}
	else */if race=13 && speed > 1 && (KeyCont.key_spec[p] = 1 || KeyCont.key_spec[p] = 2)
		{
		draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,right,1,image_angle,c_white,(ultra_got[49]*2)*sheepPower/10);}
		else if race = 9 and bskin
		draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,right*1.2,image_yscale*1.2,angle,c_white,ba)
		if skill_got[36]//Absorbing Pores
		{
			//var aprs = lerp(0,0.7,radPickedUp*0.01);
			//draw_sprite_ext(sprAbsorbingPoresRad,0,x - vx,y - vy,aprs,aprs,image_angle,c_white,min(aprs-0.3,0.4));
			with HealAbsorbingPores
			{
				draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,image_xscale,image_yscale,0,c_white,0.5);
			}
		}
		if skill_got[8]//gamma guts
		{
			if rollIframe > 0
			{
				draw_sprite_ext(sprGammaGuts,wave,x - vx,y - vy,1.5,1.5,image_angle,c_white,ba);
			}
			else
			{
				draw_sprite_ext(sprGammaGuts,wave,x - vx,y - vy,1.1,1.1,image_angle,c_white,ba);
			}
			with CrystalShield
			{
				draw_sprite_ext(sprGammaGuts,other.wave,x - vx,y - vy,2.3,2.6,image_angle,c_white,ba+0.02)
			}
			with AngelActive
			{
				draw_sprite_ext(sprGammaGuts,other.wave,x - vx,y - vy,1.8,1.8,image_angle,c_white,ba+0.02)
			}
		}
		if scrIsCrown(21)
		{
			var mh = maxhealth;
			var h = my_health;
			if ultra_got[62] && altUltra//Living armour
			{
				mh = maxarmour
				h = armour;
			}
			if h >= floor(mh*0.75)//Crown of risk
			{
				with Crown
				{
					if crown == 21
						draw_sprite_ext(sprRiskActive,other.wave,x - vx,y - vy,1.1,1.1,image_angle,c_white,ba+0.1)
				}
			}
		}
	}
	with DeflectMelee
	{
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,image_yscale,
		image_angle,c_white,image_alpha+ba)
	}
	with GammaGutsBlast
	{
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1.1,1.1,image_angle,c_white,ba)
	}
	if instance_exists(Player){

	if Player.speed > 1
	with SheepStorm
	{
		draw_sprite_ext(bloomSprite,imageIndex,x - vx,y - vy,image_xscale + 0.2,image_yscale + 0.2,image_angle,c_white,clamp(alpha,0.05,1));
	}
	with SheepChargeProjectile
	{
		draw_sprite_ext(bloomSprite,imageIndex,x - vx,y - vy,image_xscale + 0.2,image_yscale + 0.2,image_angle,c_white,alpha);
	}
		if Player.ultra_got[41]
		{
			if UberCont.normalGameSpeed == 60
			{
				with enemy
			    {
					var minSize = min(3,mySize);
			        if(point_distance(x - vx,y - vy,Player.x - vx,Player.y - vy)>100)
			        {
						draw_sprite_ext(sprHunterUltraBMark,-1,x - vx,y - vy,minSize,minSize,image_angle,c_green,ba + 0.2);
						if alarm[1] > 2
						{
							alarm[1] += 0.25
							speed -= speed * 0.1;
						}
			        }
			        else
			        {
						draw_sprite_ext(sprHunterUltraBMark,-1,x - vx,y - vy,minSize,minSize,image_angle,c_green,ba*0.8);
			        }
			    }
			}
			else
			{
			    with enemy
			    {
					var minSize = min(3,mySize);
			        if(point_distance(x - vx,y - vy,Player.x - vx,Player.y - vy)>100)
			        {
						draw_sprite_ext(sprHunterUltraBMark,-1,x - vx,y - vy,minSize,minSize,image_angle,c_green,ba + 0.2);
						if alarm[1] > 2
						{
							alarm[1] += 5;
							speed -= speed * 0.2;
						}
			        }
			        else
			        {
						draw_sprite_ext(sprHunterUltraBMark,-1,x - vx,y - vy,minSize,minSize,image_angle,c_green,ba*0.8);
			        }
			    }
			}
		}
		if Player.ultra_got[105]
		{
			var ab = 1;
			var xs = 1;
			var ys = 1;
			if scrIsInInvertedArea()
			{
				ab = 1.3;
				xs += 0.1;
				ys += 0.1;
			}
			
		    with enemy
		    {
				var d = max(40,point_distance(x - vx,y - vy,Player.x - vx,Player.y - vy))
				var ixs = xs;
				var iys = ys;
		        if(d < 128)
		        {
					var a = 0.95 - d*0.007//clamp(32/max(40,d),0.01,0.8);
					if d == 40
					{
						a += 0.1;
						ixs += 0.1;
						iys += 0.1;
					}
					a *= ab;
					draw_sprite_ext(sprGammaGuts,-1,x - vx,y - vy,ixs,iys,image_angle,c_white,a);
		        }
		    }
		}
	}

	with Laser
	{
		event_user(0);
	}
	with IonBurst
	{
		scale += 1;
		draw_set_alpha(ba);
		event_perform(ev_draw,0);
		draw_set_alpha(1);
		scale -= 1;
	}
	with EnemyIon
	{
		scale += 0.5;
		draw_set_alpha(ba);
		event_perform(ev_draw,0);
		draw_set_alpha(1);
		scale -= 0.5;
	}
	with PlayerWazer
	{
		draw_sprite_ext(startSpr,-1,x - vx,y - vy,1,2,image_angle,c_white,ba);
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,2,image_angle,c_white,ba)
		draw_sprite_ext(endSpr,-1,
		x - vx+lengthdir_x(image_xscale,image_angle),
		y - vy+lengthdir_y(image_xscale,image_angle),1,2,image_angle,c_white,ba);
	}
	with MegaLaser
	{
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,5,image_angle,c_white,ba)
	draw_sprite_ext(sprLaserStart,img,xstart - vx ,ystart - vy,5,5,image_angle,c_white,ba)
	draw_sprite_ext(sprLaserEnd,img,x - vx,y - vy,5,5,image_angle,c_white,ba)
	draw_sprite_ext(sprPlasmaBall,img,xstart - vx +lengthdir_x(8,Direction),ystart - vy+lengthdir_y(8,Direction),2,2,image_angle,c_white,1)
	}
	with EnemyLaser
	{
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserStart,img,xstart - vx ,ystart - vy,2,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserEnd,img,x - vx,y - vy,2,2,image_angle,c_white,ba)
	}
	with HunterSniperEye
	{
		draw_sprite_ext(sprHunterSniper,-1,x - vx,y - vy,image_xscale,image_yscale*2,image_angle,c_white,ba)
	}
	with IDPDLaser
	{
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserStart,img,xstart - vx ,ystart - vy,2,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserEnd,img,x - vx,y - vy,2,2,image_angle,c_white,ba)
	}

	with FloorBloom
	{
		draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,1,1,image_angle,c_white,ba)
	}

	with LaserCharge
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EnemyBullet1
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,image_yscale*2,image_angle,c_white,ba)
	with EnemyBullet1Square
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale*2,image_yscale*2,image_angle,c_white,ba)
	with AllyBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1.5,1.5,image_angle,c_white,ba - 0.2)
	with RadChest
	draw_sprite_ext(sprRadChestGlow,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EnemyBullet2
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with GhostGuardianBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EnemyBullet3
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EnemyBullet4
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with IDPDBullet
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Explosion
	{
		if visible
			draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1.5,1.5,image_angle,c_white,ba)
	}
	//with Bolt
	//draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with MeatExplosion
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,1.5,1.5,image_angle,c_white,ba)
	with BulletHit
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with EBulletHit
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with ScorpionBulletHit
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with TrapFire
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Flame
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with RageIndicator
	draw_sprite_ext(sprRageIndicatorBloom,image_index,x - vx,y - vy,1,1,image_angle,c_white,ba)
	with IceFlame
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with IceCannonBall
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with Portal
	{
		if visible
			draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2*image_xscale,2*image_yscale,image_angle,c_white,ba)
	}
	with IDPDSpawn
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2*image_xscale,2*image_yscale,image_angle,c_white,ba)
	with Implosion
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2*image_xscale,2*image_yscale,image_angle,c_white,ba)

	with Rad
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with BigRad
	draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
	with MimicBossSummonFail
	{
		draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,image_yscale,image_angle,c_white,ba);
		//event_user(0);
	}
	with CrescentMoon {
		if sprite_index == sprCrescentMoonDeflecting || sprite_index == sprCrescentMoonGammaGutsing
		{
			draw_sprite_ext(bloomSprite,0,x - vx,y - vy,image_xscale+0.1,image_yscale+0.1,image_angle,c_white,1);
		} else if deflectDurability < maxDeflect {
			draw_sprite_ext(bloomSprite,0,x - vx,y - vy,image_xscale,image_yscale,image_angle,c_white,ba);
		}
	}
	with enemy
	{
		var theScale = 1.3;
		if totemBuffed
		{
			draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,right*theScale,image_yscale*theScale,image_angle,c_red,ba+0.2);
			theScale += 0.1;
		}
		if super
		{
			draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,right*theScale,image_yscale*theScale,image_angle,c_green,ba+0.2);
		}
	}
	with CloudEnterance
	{
		//draw_sprite_ext(sprite_index,-1,x - vx,y - vy,2,2,image_angle,c_white,ba)
		draw_set_alpha(cAlpha);
		draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),48,0)
		draw_set_alpha(1);
		event_user(0);
	}
	surface_reset_target();
	gpu_set_blendmode(bm_add);
	draw_surface_ext(bloomSurface,vx,vy,1,1,0,c_white,0.3);
	gpu_set_blendmode(bm_normal);
	//draw_set_blend_mode(bm_normal)

	//with HotDrakeLava
	//draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,1,1,image_angle,c_white,0.5)
}
