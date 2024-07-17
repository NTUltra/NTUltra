function scrShadows() {
	//shadow works
	//if UberCont.opt_camera_follow=0
	//exit;
	if !(surface_exists(shad) ){
	shad = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
	surface_set_target(shad)
	draw_clear_alpha(c_black,0)
	surface_reset_target()}
	var vx = __view_get( e__VW.XView, 0 );
	var vy = __view_get( e__VW.YView, 0 );
	surface_set_target(shad);

	draw_clear_alpha(c_black,0)
	with Wall
	{
		if collision_point(x+8,y+24,Floor,false,false)
			draw_sprite_ext(outspr,outindex,x-vx,y+2+16-vy,1,-1,0,c_black,1)
	}
	with Bones
	draw_sprite_ext(sprite_index,image_index,x-vx,y-vy+8,image_xscale,-1,0,c_black,1)
	with Crown
	draw_sprite(shd16,0,x-vx,y-vy+3)
	with EnemyCrown
	draw_sprite(shd16,0,x-vx,y-vy+3)
	with prop
	{
		draw_sprite(shadowSprite,0,x-vx+shadowXoffset,y-vy+shadowYoffset)
	}
	with GoldTotem
	{
		draw_sprite(shd24,0,x-vx,y-vy+2)
	}
	with SurvivalArenaStarter
	{
		draw_sprite(shd24,0,x-vx,y-vy)
	}
	with CrownPickup
	draw_sprite(shd16,0,x-vx,y-vy+3)
	with ScrapBossMissile
	draw_sprite(shd16,0,x-vx,y-vy+3)
	with ScrapBoss
	draw_sprite(shd96,0,x-vx,y-vy)
	with LightningDrone
	draw_sprite(shd16,0,x-vx,y-vy+8)
	with PaperCraft
	draw_sprite(shd16,0,x-vx,y-vy+8)
	with InvertedScrapBoss
	draw_sprite(shd96,0,x-vx,y-vy)
	with IDPDVan
	{
		if object_index == IDPDVanVertical
			draw_sprite_ext(shd96,0,x-vx-8,y-vy,1,1,90,c_white,1)
		else
			draw_sprite(shd96,0,x-vx,y-vy-8)
	}
	with IDPDTank
	{
		draw_sprite(shd96,0,x-vx,y-vy-8)
	}
	with BecomeScrapBoss
	draw_sprite(shd96,0,x-vx,y-vy)
	with BecomeInvertedScrapBoss
	draw_sprite(shd96,0,x-vx,y-vy)
	with Maggot
	{
		if charge
			draw_sprite_ext(shd16,0,x-vx,y-vy,1,right,image_angle,c_white,1)
		else
			draw_sprite_ext(shd16,0,x-vx,y-vy,1,1,image_angle,c_white,1)
	}
	with FriendlyMaggot
	{
		if charge
			draw_sprite_ext(shd16,0,x-vx,y-vy,1,right,image_angle,c_white,1)
		else
			draw_sprite_ext(shd16,0,x-vx,y-vy,1,1,image_angle,c_white,1)
	}
	with DoomGrenade
	draw_sprite(shd8,0,x-vx,y-vy)
	with Termite
	draw_sprite(shd16,0,x-vx,y-vy)
	with FireWorm
	draw_sprite(shd48,0,x-vx,y-vy-3)
	with GyroBurst
	draw_sprite(shd16,0,x-vx,y-vy+24)
	with RadMaggot
	draw_sprite(shd16,0,x-vx,y-vy)
	with FireBat
	draw_sprite(shd16,0,x-vx,y-vy+10)
	with InvertedFireBat
	draw_sprite(shd16,0,x-vx,y-vy+10)
	with SquareBat
	draw_sprite(shd32,0,x-vx,y-vy+6)
	with VoidMasterBoss
	{
		if sprite_index == spr_idle || sprite_index == spr_walk || sprite_index == spr_hurt
		draw_sprite(shd32,0,x-vx,y-vy)
	}
	with CloudShooter
	{
		if place_meeting(x,y,Floor)
			draw_sprite(shd48,0,x-vx,y-vy+12)
	}
	with CourtyardGuardian
	draw_sprite(shd16,0,x-vx,y-vy+10)
	with InvertedCrownGlutton
	draw_sprite(shd32,0,x-vx,y-vy+6)
	with MaggotInverted
	{
		if charge
			draw_sprite_ext(shd16,0,x-vx,y-vy,1,right,image_angle,c_white,1)
		else
			draw_sprite_ext(shd16,0,x-vx,y-vy,1,1,image_angle,c_white,1)
	}
	with Scorpion
	draw_sprite(shd48,0,x-vx,y-vy)
	with BallMom
	draw_sprite(shd64,0,x-vx,y-vy+8)
	with Technomancer
	draw_sprite(shd96,0,x-vx,y-vy-8)
	with FrogEgg
	draw_sprite(shd24,0,x-vx,y-vy + 2)
	with EliteSegwayPopo
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedScorpion
	draw_sprite(shd48,0,x-vx,y-vy)
	with Crab
	draw_sprite(shd48,0,x-vx,y-vy)
	with SnowTank
	draw_sprite(shd48,0,x-vx,y-vy)
	with BigBot
	draw_sprite(shd48,0,x-vx,y-vy + 6)
	with BossBot
	draw_sprite(shd48,0,x-vx,y-vy + 10)
	with Salamander
	draw_sprite(shd48,0,x-vx,y-vy-6)
	with InvertedSalamander
	draw_sprite(shd48,0,x-vx,y-vy-6)
	with BigFish
	draw_sprite(shd48,0,x-vx,y-vy)
	with GraveyardFish
	draw_sprite(shd48,0,x-vx,y-vy)
	with BigFishStatue
	draw_sprite(shd48,0,x-vx,y-vy)
	with InvertedSnowTank
	draw_sprite(shd48,0,x-vx,y-vy)
	with GoldSnowTank
	draw_sprite(shd48,0,x-vx,y-vy)
	with SnowTankExplo
	draw_sprite(shd48,0,x-vx,y-vy)
	with GoldScorpion
	draw_sprite(shd48,0,x-vx,y-vy)
	with InvertedGoldScorpion
	draw_sprite(shd48,0,x-vx,y-vy)
	with PalaceGuardian
	draw_sprite(shd24,0,x-vx,y-vy+8)
	with ExploGuardian
	draw_sprite(shd24,0,x-vx,y-vy+6)
	with CubeGuardian
	draw_sprite(shd48c,0,x-vx,y-vy+6)
	with BecomeJungleBoss
	draw_sprite(shdBushBox,0,x-vx,y-vy)
	with BecomeInvertedJungleBoss
	draw_sprite(shdBushBox,0,x-vx,y-vy)
	with JungleBoss
	draw_sprite(shdBushBox,0,x-vx,y-vy)
	with BushBoxStatue
	draw_sprite(shdBushBox,0,x-vx,y-vy)
	with GhostGuardian
	draw_sprite(shd32,0,x-vx,y-vy+8)
	with GuardianDog
	draw_sprite(shd48,0,x-vx,y-vy+4)
	with CourtyardTank
	draw_sprite(shd24,0,x-vx,y-vy-3)
	with LaserCrystal
	draw_sprite(shd24,0,x-vx,y-vy+8)
	with HyperCrystal
	draw_sprite(shd48,0,x-vx,y-vy+32)
	with HyperCrystalStatue
	draw_sprite(shd48,0,x-vx,y-vy+32)
	with LightningCrystal
	draw_sprite(shd24,0,x-vx,y-vy+8)
	with CursedCrystal
	draw_sprite(shd24,0,x-vx,y-vy+8)
	with BanditBoss
	draw_sprite(shd48,0,x-vx,y-vy)
	with BigDisc
	draw_sprite(shd64B,0,x-vx,y-vy)
	with InvertedBanditBoss
	draw_sprite(shd48,0,x-vx,y-vy)
	with BigVulture
	draw_sprite(shd32,0,x-vx,y-vy+6)
	with BigVultureStatue
	draw_sprite(shd32,0,x-vx,y-vy+6)
	with MaggotSpawn
	draw_sprite(shd32,0,x-vx,y-vy)
	with LavaBallEnemy
	draw_sprite(shd32,0,x-vx,y-vy+4)
	with InvertedLavaBallEnemy
	draw_sprite(shd32,0,x-vx,y-vy+4)
	with BigMachine
	draw_sprite(shd96,0,x-vx,y-vy+27)
	with BigMachineLaser
	draw_sprite(shd16,0,x-vx,y-vy);
	with InvertedBigMachine
	draw_sprite(shd96,0,x-vx,y-vy+27)
	with InvertedBigMachineLaser
	draw_sprite(shd16,0,x-vx,y-vy);
	with VoidMaster
		if sprite_index == spr_idle
			draw_sprite(sprVoidMasterShadow,0,x-vx,y-vy)

	with ChesireCat
	{
	if visible
	draw_sprite(shd32,0,x-vx,y-vy+10)}
	with ChesireCatStatue
	{
	draw_sprite(shd32,0,x-vx,y-vy+10)}
	with InvertedChesireCat
	{
	if visible
	draw_sprite(shd32,0,x-vx,y-vy+10)}

	with Jock
	draw_sprite(shd32,0,x-vx,y-vy)
	with InvertedJock
	draw_sprite(shd32,0,x-vx,y-vy)
	with FireBaller
	draw_sprite(shd32,0,x-vx,y-vy)
	with SuperFireBaller
	draw_sprite(shd32,0,x-vx,y-vy)
	with InvertedFireBaller
	draw_sprite(shd32,0,x-vx,y-vy)
	with InvertedSuperFireBaller
	draw_sprite(shd32,0,x-vx,y-vy)
	with IDPDCaptain
		draw_sprite(shd32,0,x-vx,y-vy + 12)
	with IDPDCaptainDeathBed
		draw_sprite(shd32,0,x-vx,y-vy + 10)
	with Car
	{
		if drawShadow
			draw_sprite(shd32,0,x-vx,y-vy)
	}
	with CarVenus
	{
		if drawShadow
			draw_sprite(shd32,0,x-vx,y-vy)
	}
	with CarVenusFixed
	draw_sprite(shd32,0,x-vx,y-vy)
	with CarThrow
	draw_sprite(shd32,0,x-vx,y-vy)
	with BigMaggot
	draw_sprite(shd32,0,x-vx,y-vy)
	with BigMaggotInverted
	draw_sprite(shd32,0,x-vx,y-vy)
	with SandWorm
	{
		if sprite_index != spr_disappear_end && (sprite_index != spr_appear || image_index > 7)
			draw_sprite_ext(shdSandWorm,0,x-vx,y-vy,image_xscale,image_yscale,0,c_white,1)
	}
	with CrownPed
	draw_sprite(shd64B,0,x-vx,y-vy+8)
	with WeaponMod
	draw_sprite(shd32,0,x-vx,y-vy+8)
	with UltraMod
	{
		if sprite_index != sprUltraModHolderDead
			draw_sprite(shd24,0,x-vx,y-vy-1)
	}
	with BossReward
	{
		draw_sprite(shd24,0,x-vx,y-vy-1)
	}
	with Ratking
	draw_sprite(shd48,0,x-vx,y-vy)
	with RatkingRage
	draw_sprite(shd48,0,x-vx,y-vy)
	with InvertedRatking
	draw_sprite(shd48,0,x-vx,y-vy)
	with InvertedRatkingRage
	draw_sprite(shd48,0,x-vx,y-vy)
	with CardGuy
	draw_sprite(shd16,0,x-vx,y-vy+12)
	with CardGuy2
	draw_sprite(shd16,0,x-vx,y-vy+12)
	with InvertedCardGuy
	draw_sprite(shd16,0,x-vx,y-vy+12)
	with InvertedCardGuy2
	draw_sprite(shd16,0,x-vx,y-vy+12)
	with TeaPot
	draw_sprite(shd24,0,x-vx,y-vy+12)
	with InvertedTeaPot
	draw_sprite(shd24,0,x-vx,y-vy+12)
	with HotDrake
	{
	if visible
	draw_sprite(shd32,0,x+8-vx,y+90-vy)
	}
	with InvertedHotDrake
	{
	if visible
	draw_sprite(shd32,0,x+8-vx,y+90-vy)
	}
	with Player
	{
		var py = y;
		if hammerheadDig > 0
			py -= 2;
		if visible = 1
		{
			if jump > 0
			{
				if (!instance_exists(Wall) || collision_point(x,y,Floor,false,false))
					draw_sprite(shd24,0,x-vx,py-vy)
			}
			else if race == 14
				draw_sprite(shdPanda,0,x-vx,py-vy)
			else if race = 18
			{
				if (!instance_exists(Wall) || collision_point(x,y,Floor,false,false))
					draw_sprite(shd24,0,x-vx,py-vy+12)
			}
			else
				draw_sprite(shd24,0,x-vx,py-vy)
		}
	}
	with MimicBoss
	{
		if race == 14
			draw_sprite(shdPanda,0,x-vx,y-vy)
		else if race = 18
		{
			if (!instance_exists(Wall) || collision_point(x,y,Floor,false,false))
				draw_sprite(shd24,0,x-vx,y-vy+12)
		}
		else
			draw_sprite(shd24,0,x-vx,y-vy)
	}
	with YVThiefStopper
	{
		draw_sprite(shd24,0,x-vx,y-vy)	
	}
	with Friend
	{
	if visible = 1
	{
		if race == 14
		draw_sprite(shdPanda,0,x-vx,y-vy)
		else if race=18
		draw_sprite(shd24,0,x-vx,y-vy+12)
		else
		draw_sprite(shd24,0,x-vx,y-vy)
	}
	}
	with Messenger
	{
		draw_sprite(shd24,0,x-vx,y-vy)
	}
	with You
	{
	if visible = 1
	{
	if race=18
	draw_sprite(shd24,0,x-vx,y-vy+16)
	else if race=24
	draw_sprite(shd24,0,x-vx,y-vy+10)
	else
	draw_sprite(shd24,0,x-vx,y-vy)
	}
	}
	with YungCuzDupe
	draw_sprite(shd24,0,x-vx,y-vy)

	with CampChar
	{
	if num = 17
		draw_sprite(shd48,0,x-vx,y-vy-3)
	else if num == 20
		draw_sprite(shd72,0,x-vx,y-vy-16)
	else if !(num = 15 && sprite_index=spr_slct )
		draw_sprite(shd24,0,x-vx,y-vy)
	
	}
	//with prop
	//draw_sprite(shd24,0,x-vx,y-vy)
	with chestprop
	draw_sprite(shadowSprite,0,x-vx,y-vy-1)
	with Mimic
	draw_sprite(shd24,0,x-vx,y-vy)
	with BigWeaponChest
	draw_sprite(shd32,0,x-vx,y-vy)
	with Hyena
	draw_sprite(shd32,0,x-vx,y-vy+1)
	with Rat
	draw_sprite(shd24,0,x-vx,y-vy)
	with FastRat
	draw_sprite(shd24,0,x-vx,y-vy)
	with GraveyardSkeleton
		draw_sprite(shd16,0,x-vx,y-vy+2)
	with GraveyardBreeder
		draw_sprite(shd24,0,x-vx,y-vy + 2)
	with InvertedRat
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedFastRat
		draw_sprite(shd24,0,x-vx,y-vy)
	with Spider
		draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedSpider
		draw_sprite(shd24,0,x-vx,y-vy)
	with CursedSpider
		draw_sprite(shd24,0,x-vx,y-vy)
	with Bandit
		draw_sprite(shd24,0,x-vx,y-vy)
	with FreakBandit
		draw_sprite(shd24,0,x-vx,y-vy - 2)
	with UltraProtector
		draw_sprite(shd24,0,x-vx,y-vy)
	with UltraBandit
		draw_sprite(shd24,0,x-vx,y-vy)
	with ScubaBandit
		draw_sprite(shd24,0,x-vx,y-vy)
	with SquareBot
		draw_sprite(shd24,0,x-vx,y-vy)
	with OctaBot
		draw_sprite(shd24,0,x-vx,y-vy)
	with JellyFish
		draw_sprite(shd24,0,x-vx,y-vy+4)
	with TinyJellyFish
		draw_sprite(shdTinyJellyFish,0,x-vx,y-vy+3)
	with ToxicMushroomGuy
		draw_sprite(shd24,0,x-vx,y-vy)
	with SavannaBandit
		draw_sprite(shd24,0,x-vx,y-vy)
	with Vulture
		draw_sprite(shd24,0,x-vx,y-vy)
	with BanditSquare
		draw_sprite(shd24,0,x-vx,y-vy)
	with LaserBandit
		draw_sprite(shd24,0,x-vx,y-vy)
	with EraserBandit
		draw_sprite(shd24,0,x-vx,y-vy)
	with JungleBandit
		draw_sprite(shd24,0,x-vx,y-vy)
	with JungleAssassin
		draw_sprite(shd24,0,x-vx,y-vy)
	with JungleFly
		draw_sprite(shd32,0,x-vx,y-vy+4)
	with JungleFly
		draw_sprite(shd32,0,x-vx,y-vy+4)
	with JungleGorilla
		draw_sprite(shdJungleGorilla,0,x-vx,y-vy)
	with BoneFish
		draw_sprite(shd24,0,x-vx,y-vy)
	with DiscGuy
		draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedDiscGuy
		draw_sprite(shd24,0,x-vx,y-vy)
	with BanditInverted
		draw_sprite(shd24,0,x-vx,y-vy)
	with Turtle
		draw_sprite(shd24,0,x-vx,y-vy)
	with Ally
		draw_sprite(shd24,0,x-vx,y-vy-1)
	with TinyKraken
		draw_sprite(shd24,0,x-vx,y-vy)
	with Grunt
	draw_sprite(shd24,0,x-vx,y-vy)
	with ExploderPopo
	draw_sprite(shd24,0,x-vx,y-vy)
	with EliteExploderPopo
	draw_sprite(shd24,0,x-vx,y-vy)
	with IDPDFreak
	draw_sprite(shd24,0,x-vx,y-vy+2)
	with BuffPopo
	draw_sprite(shd24,0,x-vx,y-vy)
	with Inspector
	draw_sprite(shd24,0,x-vx,y-vy)
	with EliteGrunt
	draw_sprite(shd24,0,x-vx,y-vy)
	with EliteInspector
	draw_sprite(shd24,0,x-vx,y-vy)
	with SegwayPopo
	draw_sprite(shd24,0,x-vx,y-vy+6)
	with Shielder
	draw_sprite(shd24,0,x-vx,y-vy)
	with EliteShielder
	draw_sprite(shd24,0,x-vx,y-vy)
	with EliteBuffPopo
	draw_sprite(shd24,0,x-vx,y-vy)
	with Molefish
	draw_sprite(shd24,0,x-vx,y-vy)
	with Molesarge
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedMolesarge
	draw_sprite(shd24,0,x-vx,y-vy)
	with Gator
	draw_sprite(shd24,0,x-vx,y-vy)
	with BuffGator
	draw_sprite(shd24,0,x-vx,y-vy)
	with GatorSmoke
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedGator
	draw_sprite(shd24,0,x-vx,y-vy)
	with SnowBot
	draw_sprite(shd24,0,x-vx,y-vy)
	with SnowBotCar
	draw_sprite(shd32,0,x-vx,y-vy)
	with InvertedSnowBot
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedSnowBotCar
	draw_sprite(shd32,0,x-vx,y-vy)
	with Raven
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedRaven
	draw_sprite(shd24,0,x-vx,y-vy)
	with Freak
	draw_sprite(shd24,0,x-vx,y-vy + shadowY)
	with Sapling
	draw_sprite(shd24,0,x-vx,y-vy)
	with AllyFreak
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedFreak
	draw_sprite(shd24,0,x-vx,y-vy)
	with ExploFreak
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedExploFreak
	draw_sprite(shd24,0,x-vx,y-vy)
	with Necromancer
	draw_sprite(shd24,0,x-vx,y-vy+1)
	with InvertedNecromancer
	draw_sprite(shd24,0,x-vx,y-vy+1)
	with BuffMushroom
	draw_sprite(shd48,0,x-vx,y-vy)
	with RhinoFreak
	draw_sprite(shd48,0,x-vx,y-vy)
	with InvertedRhinoFreak
	draw_sprite(shd48,0,x-vx,y-vy)
	with RavenFly
	draw_sprite(shd24,0,x-vx,y-vy)
	with UltraRavenFly
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedRavenFly
	draw_sprite(shd24,0,x-vx,y-vy)
	with LilHunter
	draw_sprite(shd24,0,x-vx,y-vy)
	with LilHunterFly
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedLilHunter
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedLilHunterFly
	draw_sprite(shd24,0,x-vx,y-vy)
	with MeleeBandit
	draw_sprite(shd24,0,x-vx,y-vy)
	with AssassinBoss
	draw_sprite(shd24,0,x-vx,y-vy)
	with BigAssassinStatue
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedAssassinBoss
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedMeleeBandit
	draw_sprite(shd24,0,x-vx,y-vy)
	with Sniper
	draw_sprite(shd24,0,x-vx,y-vy)
	with UltraSniper
	draw_sprite(shd24,0,x-vx,y-vy+1)
	with GraveyardSniper
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedSniper
	draw_sprite(shd24,0,x-vx,y-vy)
	with Exploder
	draw_sprite(shd24,0,x-vx,y-vy)
	with AllyExploder
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedExploder
	draw_sprite(shd24,0,x-vx,y-vy)
	with SuperFrog
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedSuperFrog
	draw_sprite(shd24,0,x-vx,y-vy)
	with Wolf
	draw_sprite(shd24,0,x-vx,y-vy)
	with InvertedWolf
	draw_sprite(shd24,0,x-vx,y-vy)
	with ProtoStatue
	draw_sprite(shd64B,0,x-vx,y-vy)
	with Sheep
	draw_sprite(shd26,0,x-vx,y-vy)

	with CrystalShield
	{
	if image_speed = 0
	draw_sprite(shd64,0,x-vx,y-vy+2)
	}

	surface_reset_target()



}
