function scrDrawBloom() {
	var ba = 0.1;
	//if instance_count>2000 emergancy when there is just too much going on
	//exit;

	draw_set_blend_mode(bm_add)
	if instance_exists(Player){
	with Bullet1
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with Bullet1Toxic
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with Bullet1Explosive
	draw_sprite_ext(sprBullet1,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with RogueBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with Bullet8//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with BloodBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with Bullet4
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

	with HorrorBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3))//roids ultra d
	
	with FrostFlakBullet
	draw_sprite_ext(sprite_index,1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with BouncerFlakBullet
	draw_sprite_ext(sprite_index,1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	
	with OExplosion
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
	}
	with PlutoFX
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,ba)
	
	

	with MorphSlash//the only melee with bloom cause I can
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with PartnerBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Partner
	draw_sprite_ext(sprPlasmaBall,0,x,y,1.5,1.5,image_angle,c_white,ba)
	with ToxicGas
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with ToxicThrowerGas
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Deflect
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with BallBossShield
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Bullet2//PELLETS
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Bullet6//FLAME PELLETS
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Bullet7//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with DirectorGrenade//DIRECTOR
	draw_sprite_ext(sprDirectorGrenadeBloom,0,x,y,2,2,image_angle,c_white,ba)
	with RedirectFX//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Bullet9//FLAME DIRECTOR PELLETS
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Bullet5
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Flames
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with DiscoBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with SheepHyperDashTrail
	draw_sprite_ext(bloomSprite,-1,x,y,2,2,image_angle,c_white,(ba)*image_alpha)
	if instance_exists(Player)
	{
		with Rage{
		draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,Player.rage*0.002)}

		with AngelDeflect//ANGEL PROTECTOR ULTRA A
		draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,(ba*0.35)*Player.speed);

		with Bullet3//bouncer
		draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d


		with FreezeBullet
		draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d


		with HeavyBullet
		draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d

		with FatBullet
		draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba)//roids ultra d
		
		with Morph
		{
			if visible
			{
				if Player.skill_got[17]
					draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(image_alpha+0.2)*(0.5-ba));
				else
					draw_sprite_ext(sprite_index,-1,x,y,1.8,1.8,image_angle,c_white,image_alpha*(0.5-ba));
			}
		}
		with ExplosiveMorph
		{
			if visible
			{
				if Player.skill_got[17]
					draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(image_alpha+0.2)*(0.5-ba));
				else
					draw_sprite_ext(sprite_index,-1,x,y,1.8,1.8,image_angle,c_white,image_alpha*(0.5-ba));
			}
		}
	}
	with DiscoBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with PlasmaBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with BouncerPlasmaBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with BouncerPlasmaBallBig
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with RedirectorPlasmaBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with ElectroBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with ElectroBallBig
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with PlasmaFX
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with MiniPlasmaBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with LaserCannon
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,ba)
	with Lightning
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba)

	with ArmourStrike
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba)

	with ArmourStrikeStart
	draw_sprite_ext(sprArmourStrikeStartBloom,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba)

	with ArmourStrikeHit
	draw_sprite_ext(sprArmourStrikeEndBloom,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba)

	with UltraLightning
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba)

	with HorrorBeam
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba)

	with FlakBullet
	draw_sprite_ext(sprite_index,1,x,y,2,2,image_angle,c_white,ba)
	with ExplosiveFlakBullet
	draw_sprite_ext(sprFlakBullet,1,x,y,2,2,image_angle,c_white,ba)
	with SlugCannonBullet
	draw_sprite_ext(sprite_index,1,x,y,2,2,image_angle,c_white,ba)
	with UltraFlakBullet
	draw_sprite_ext(sprite_index,1,x,y,2,2,image_angle,c_white,ba)
	
	with AssassinBoss
	{
		var ds = ds_list_size(afterImage);
		for (var i = 0; i <  ds; i++) {
			var aimage = afterImage[| i];
			draw_sprite_ext(aimage.sp,aimage.ii,aimage.xx,aimage.yy,aimage.xs,1,0,c_white,clamp(aimage.time + 0.2,0.2,1));
		}	
	}
	with SuperFlakBullet
	draw_sprite_ext(sprite_index,1,x,y,2,2,image_angle,c_white,ba)
	with SuperBouncerFlakBullet
	draw_sprite_ext(sprite_index,1,x,y,2,2,image_angle,c_white,ba)
	with PlasmaBig
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with PlasmaHuge
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with PlasmaImpact
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with MiniPlasmaImpact
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBullet3
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBullet5
	draw_sprite_ext(sprEnemyBullet4,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBouncerBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Slug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with UltraSlug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with DirectorSlug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with HeavySlug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with SlashShotgunPrep
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Ray
	draw_sprite_ext(sprite_index,-1,x,y,3,3,image_angle,c_white,ba)
	with SwordBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with LavaBubble
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with GunWarrant
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EuphoriaShield
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Disc
	draw_sprite_ext(sprite_index,-1,xprevious,yprevious,1,1,image_angle,c_white,ba)
	with MiniFlameCannonBall
	draw_sprite_ext(sprMiniFlameCannonBallBloom,image_index,x,y,2,2,image_angle,c_white,ba)
	with FlameCannonBall
	draw_sprite_ext(sprFlameCannonBallBloom,image_index,x,y,2,2,image_angle,c_white,ba)
	with FlameCannonBall
	draw_sprite_ext(sprite_index,image_index,x,y,2,2,image_angle,c_white,ba)
	with HotDrakeFlameCannon
	draw_sprite_ext(sprHotDrakeFlameCannonBloom,image_index,x,y,2,2,image_angle,c_white,ba)
	with HotDrakeSplitBall
	draw_sprite_ext(sprHotDrakeSplitBallBloom,image_index,x,y,3,2,image_angle,c_white,ba)

	with InvertedHotDrakeSplitBall
	draw_sprite_ext(sprInvertedHotDrakeSplitBallBloom,image_index,x,y,3,3,image_angle,c_white,ba)

	with LavaBallEnemy
	draw_sprite_ext(sprHotDrakeFlameCannonBloom,image_index,x,y,2,2,image_angle,c_white,ba)
	with WeaponCharge
	draw_sprite_ext(sprite_index,image_index,x,y,2,2,image_angle,c_white,ba)

	with Player
	{
	if race=13 && (KeyCont.key_spec[p] = 1 || KeyCont.key_spec[p] = 2)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,right,1,image_angle,c_white,(ultra_got[49]*2)*sheepPower/10);}
	if race = 9 and bskin
	draw_sprite_ext(sprite_index,image_index,x,y,right*1.2,1.2,image_angle,c_white,ba)
	if skill_got[8]//gamma guts
	{
		draw_sprite_ext(sprGammaGuts,wave,x,y,1.1,1.1,image_angle,c_white,ba)
		with CrystalShield
		{
			draw_sprite_ext(sprGammaGuts,other.wave,x,y,2.3,2.6,image_angle,c_white,ba+0.02)
		}
	}
	}
	with GammaGutsBlast
	{
		draw_sprite_ext(sprite_index,-1,x,y,1.1,1.1,image_angle,c_white,ba)
	}
	if instance_exists(Player){

	with SheepStorm
	{
		draw_sprite_ext(bloomSprite,imageIndex,x,y,(Player.sheepPower/10)+1,(Player.sheepPower/10)+1,image_angle,c_white,clamp(alpha*0.3,0.05,0.3));
	}
		if Player.ultra_got[41]==1
		{
		    with enemy
		    {
		        if(point_distance(x,y,Player.x,Player.y)>100)
		        {
		        draw_sprite_ext(sprHunterUltraBMark,-1,x,y,size,size,image_angle,c_green,0.2);
		        }
		        else
		        {
		        draw_sprite_ext(sprHunterUltraBMark,-1,x,y,size,size,image_angle,c_green,0.05);
		        }
        
		    }
		}
		if Player.ultra_got[105]==1
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
				var d = max(40,point_distance(x,y,Player.x,Player.y))
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
					draw_sprite_ext(sprGammaGuts,-1,x,y,ixs,iys,image_angle,c_white,a);
		        }
		    }
		}
	}

	with Laser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,2,image_angle,c_white,ba)
	draw_sprite_ext(startImg,img,xstart,ystart,2,2,image_angle,c_white,ba)
	draw_sprite_ext(endImg,img,x,y,2,2,image_angle,c_white,ba)
	}
	with PlayerWazer
	{
		draw_sprite_ext(startSpr,-1,x,y,1,2,image_angle,c_white,ba);
		draw_sprite_ext(sprite_index,-1,x,y,image_xscale,2,image_angle,c_white,ba)
		draw_sprite_ext(endSpr,-1,
		x+lengthdir_x(image_xscale,image_angle),
		y+lengthdir_y(image_xscale,image_angle),1,2,image_angle,c_white,ba);
	}
	with MegaLaser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,5,image_angle,c_white,ba)
	draw_sprite_ext(sprLaserStart,img,xstart,ystart,5,5,image_angle,c_white,ba)
	draw_sprite_ext(sprLaserEnd,img,x,y,5,5,image_angle,c_white,ba)
	draw_sprite_ext(sprPlasmaBall,img,xstart+lengthdir_x(8,Direction),ystart+lengthdir_y(8,Direction),2,2,image_angle,c_white,1)
	}
	with EnemyLaser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserStart,img,xstart,ystart,2,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserEnd,img,x,y,2,2,image_angle,c_white,ba)
	}
	with IDPDLaser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserStart,img,xstart,ystart,2,2,image_angle,c_white,ba)
	draw_sprite_ext(sprEnemyLaserEnd,img,x,y,2,2,image_angle,c_white,ba)
	}

	with Floor
	{
	if sprite_index = sprFloor2B
	draw_sprite_ext(sprFloor2BBloom,image_index,x,y,1,1,image_angle,c_white,ba)

	if sprite_index = sprFloor102B
	draw_sprite_ext(sprFloor102BBloom,image_index,x,y,1,1,image_angle,c_white,ba)
	}

	with LaserCharge
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBullet1
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBullet1Square
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with AllyBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with RadChest
	draw_sprite_ext(sprRadChestGlow,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBullet2
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with GhostGuardianBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBullet3
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EnemyBullet4
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with IDPDBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Explosion
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Bolt
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with MeatExplosion
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with BulletHit
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with EBulletHit
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with ScorpionBulletHit
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with TrapFire
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Flame
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with IceFlame
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with IceCannonBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with Portal
	{
		if visible
			draw_sprite_ext(sprite_index,-1,x,y,2*image_xscale,2*image_yscale,image_angle,c_white,ba)
	}
	with IDPDSpawn
	draw_sprite_ext(sprite_index,-1,x,y,2*image_xscale,2*image_yscale,image_angle,c_white,ba)
	with Implosion
	draw_sprite_ext(sprite_index,-1,x,y,2*image_xscale,2*image_yscale,image_angle,c_white,ba)

	with Rad
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	with BigRad
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba)
	draw_set_blend_mode(bm_normal)

	//with HotDrakeLava
	//draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,0.5)



}
