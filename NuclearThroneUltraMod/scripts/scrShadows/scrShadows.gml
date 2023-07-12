function scrShadows() {
	//shadow works
	//if UberCont.opt_camera_follow=0
	//exit;

	if !(surface_exists(shad) ){
	shad = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
	surface_set_target(shad)
	draw_clear_alpha(c_black,0)
	surface_reset_target()}

	surface_set_target(shad);

	draw_clear_alpha(c_black,0)
	with Wall
	{
	//if place_meeting(x,y+16,Floor)
	if place_meeting(x,y+16,Floor)//!place_meeting(x,y+16,Top) and !place_meeting(x,y+16,TopSmall) && place_meeting(x,y+16,Floor)
		draw_sprite_ext(outspr,outindex,x-__view_get( e__VW.XView, 0 ),y+2+16-__view_get( e__VW.YView, 0 ),1,-1,0,c_black,1)
	}
	with VikingWall
	{
	//if place_meeting(x,y+16,Floor)
		if !place_meeting(x,y+16,Top) and !place_meeting(x,y+16,TopSmall)
			draw_sprite_ext(outspr,outindex,x-__view_get( e__VW.XView, 0 ),y+2+16-__view_get( e__VW.YView, 0 ),1,-1,0,c_black,1)
	}
	with Bones
	draw_sprite_ext(sprite_index,image_index,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8,image_xscale,-1,0,c_black,1)
	with Crown
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+3)
	with EnemyCrown
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+3)
	with prop
	{
		draw_sprite(shadowSprite,0,x-__view_get( e__VW.XView, 0 )+shadowXoffset,y-__view_get( e__VW.YView, 0 )+shadowYoffset)
	}
	with GoldTotem
	{
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+2)
	}
	with SurvivalArenaStarter
	{
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	}
	with CrownPickup
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+3)
	with ScrapBossMissile
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+3)
	with ScrapBoss
	draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedScrapBoss
	draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with IDPDVan
	{
		if object_index == IDPDVanVertical
			draw_sprite_ext(shd96,0,x-__view_get( e__VW.XView, 0 )-8,y-__view_get( e__VW.YView, 0 ),1,1,90,c_white,1)
		else
			draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-8)
	}
	with BecomeScrapBoss
	draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BecomeInvertedScrapBoss
	draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Maggot
	draw_sprite_ext(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),1,1,image_angle,c_white,1)
	with DoomGrenade
	draw_sprite(shd8,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Termite
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with FireWorm
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-3)
	with GyroBurst
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+24)
	with RadMaggot
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with FireBat
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+10)
	with InvertedFireBat
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+10)
	with SquareBat
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+6)
	with CourtyardGuardian
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+10)
	with InvertedCrownGlutton
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+6)
	with MaggotInverted
	draw_sprite_ext(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),1,1,image_angle,c_white,1)
	with Scorpion
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BallMom
	draw_sprite(shd64,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with Technomancer
	draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-8)
	with FrogEgg
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedScorpion
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Crab
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SnowTank
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Salamander
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-6)
	with InvertedSalamander
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-6)
	with BigFish
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BigFishStatue
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedSnowTank
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with GoldSnowTank
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SnowTankExplo
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with GoldScorpion
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedGoldScorpion
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with PalaceGuardian
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with ExploGuardian
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+6)
	with CubeGuardian
	draw_sprite(shd48c,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+6)
	with BecomeJungleBoss
	draw_sprite(shdBushBox,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BecomeInvertedJungleBoss
	draw_sprite(shdBushBox,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with JungleBoss
	draw_sprite(shdBushBox,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BushBoxStatue
	draw_sprite(shdBushBox,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with GhostGuardian
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with GuardianDog
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+4)
	with CourtyardTank
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-3)
	with LaserCrystal
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with HyperCrystal
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+32)
	with HyperCrystalStatue
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+32)
	with LightningCrystal
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with CursedCrystal
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with BanditBoss
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BigDisc
	draw_sprite(shd64B,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedBanditBoss
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BigVulture
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+6)
	with BigVultureStatue
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+6)
	with MaggotSpawn
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with LavaBallEnemy
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+4)
	with InvertedLavaBallEnemy
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+4)
	with BigMachine
	draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+27)
	with BigMachineLaser
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ));
	with InvertedBigMachine
	draw_sprite(shd96,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+27)
	with InvertedBigMachineLaser
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ));

	with ChesireCat
	{
	if visible
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+10)}
	with ChesireCatStatue
	{
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+10)}
	with InvertedChesireCat
	{
	if visible
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+10)}

	with Jock
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedJock
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with FireBaller
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SuperFireBaller
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedFireBaller
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedSuperFireBaller
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Car
	{
		if drawShadow
			draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	}
	with CarVenus
	{
		if drawShadow
			draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	}
	with CarVenusFixed
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with CarThrow
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BigMaggot
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BigMaggotInverted
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with CrownPed
	draw_sprite(shd64B,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with WeaponMod
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	with UltraMod
	{
		if sprite_index != sprUltraModHolderDead
			draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-1)
	}
	with BossReward
	{
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-1)
	}
	with Ratking
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with RatkingRage
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedRatking
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedRatkingRage
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with CardGuy
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	with CardGuy2
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	with InvertedCardGuy
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	with InvertedCardGuy2
	draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	with TeaPot
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	with InvertedTeaPot
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	with HotDrake
	{
	if visible
	draw_sprite(shd32,0,x+8-__view_get( e__VW.XView, 0 ),y+90-__view_get( e__VW.YView, 0 ))
	}
	with InvertedHotDrake
	{
	if visible
	draw_sprite(shd32,0,x+8-__view_get( e__VW.XView, 0 ),y+90-__view_get( e__VW.YView, 0 ))
	}
	with Player
	{
	if visible = 1
	{
	if race=18
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	else if race=24
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	else
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	}
	with YVThiefStopper
	{
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))	
	}
	}
	with Friend
	{
	if visible = 1
	{
	if race=18
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+12)
	else if race=24
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+8)
	else
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	}
	}
	with You
	{
	if visible = 1
	{
	if race=18
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+16)
	else if race=24
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+10)
	else
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	}
	}
	with YungCuzDupe
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))

	with CampChar
	{
	if num = 17
		draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-3)
	else if num == 20
		draw_sprite(shd72,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-16)
	else if !(num = 15 && sprite_index=spr_slct )
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	
	}
	//with prop
	//draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with chestprop
	draw_sprite(shadowSprite,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-1)
	with Mimic
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BigWeaponChest
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Hyena
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+1)
	with Rat
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with FastRat
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with GraveyardSkeleton
		draw_sprite(shd16,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+2)
	with GraveyardBreeder
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ) + 2)
	with InvertedRat
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedFastRat
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Spider
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedSpider
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with CursedSpider
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Bandit
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with UltraBandit
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with ScubaBandit
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with JellyFish
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+4)
	with ToxicMushroomGuy
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SavannaBandit
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Vulture
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BanditSquare
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with LaserBandit
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with EraserBandit
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with JungleBandit
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with JungleAssassin
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with JungleFly
		draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+4)
	with Thief
		draw_sprite_ext(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),1,1,0,c_white,alpha);
	with BoneFish
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with DiscGuy
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedDiscGuy
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BanditInverted
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Turtle
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Ally
		draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )-1)
	with Grunt
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with IDPDFreak
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+2)
	with BuffPopo
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Inspector
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with EliteGrunt
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with EliteInspector
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SegwayPopo
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+6)
	with Shielder
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with EliteShielder
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Molefish
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Molesarge
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedMolesarge
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Gator
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BuffGator
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with GatorSmoke
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedGator
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SnowBot
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SnowBotCar
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedSnowBot
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedSnowBotCar
	draw_sprite(shd32,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Raven
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedRaven
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Freak
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Sapling
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with AllyFreak
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedFreak
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with ExploFreak
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedExploFreak
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Necromancer
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+1)
	with InvertedNecromancer
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+1)
	with BuffMushroom
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with RhinoFreak
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedRhinoFreak
	draw_sprite(shd48,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with RavenFly
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedRavenFly
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with LilHunter
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with LilHunterFly
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedLilHunter
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedLilHunterFly
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with MeleeBandit
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with AssassinBoss
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with BigAssassinStatue
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedAssassinBoss
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedMeleeBandit
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Sniper
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with UltraSniper
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+1)
	with GraveyardSniper
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedSniper
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Exploder
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with AllyExploder
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedExploder
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with SuperFrog
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedSuperFrog
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Wolf
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with InvertedWolf
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with ProtoStatue
	draw_sprite(shd64B,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with Sheep
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))
	with ExplosiveSheep
	draw_sprite(shd24,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ))

	with CrystalShield
	{
	if image_speed = 0
	draw_sprite(shd64,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+2)
	}

	surface_reset_target()



}
