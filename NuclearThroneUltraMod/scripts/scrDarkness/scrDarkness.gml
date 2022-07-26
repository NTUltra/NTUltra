function scrDarkness() {	if darkness = 1
	{

	if !(surface_exists(dark) ){
	dark = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
	}


	surface_set_target(dark)

	draw_clear(c_white)
	if instance_exists(Player){
	if Player.race = 3
	draw_clear(c_gray)}else draw_clear(c_gray)

	draw_set_color(c_gray)

	with Floor{if sprite_index = sprFloor2B or sprite_index = sprFloor102B
	draw_circle(x+16-__view_get( e__VW.XView, 0 ),y+16-__view_get( e__VW.YView, 0 ),32+random(4),0)}
	with Player
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),130+random(4),0)
	with You
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),130+random(4),0)
	with MeatExplosion
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),140+random(4),0)
	with Explosion
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),160+random(4),0)
	with Throne2
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),130+random(12),0)
	with BecomeThrone2
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),130+random(12),0)
	with OExplosion
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),160+random(4),0)
	with SmallExplosion
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),64+random(4),0)
	with ChesireCat
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),160+random(4),0)
	with InvertedChesireCat
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),160+random(4),0)
	with Portal
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),120+random(8),0)
	with Tangle
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),110+random(4),0)
	with Crystal
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),90,0)
	
	//Top enemies
	with SquareBat
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),32,0)
	with BigBadBat
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),90,0)
	with GhostGuardian
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),48,0)
	with BallBoss
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),100,0)
	with BecomeBallBoss
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),100,0)
	with BigFish
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),100,0)
	with BigVulture
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),100,0)
	with JungleBoss
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),120,0)
	
	
	with Torch
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),90+random(4),0)
	with OldTorch
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),90+random(4),0)
	with Barrel
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),90+random(4),0)
	with Terminal
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),60+random(4),0)
	with Flame
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),70+random(4),0)
	with UltraFlame
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),70+random(4),0)
	with CrownPickup
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),60,0)
	with Bullet1
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),60+random(4),0)
	with EnemyBullet1Square
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),60+random(4),0)
	with DiscoBall
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),60+random(4),0)
	//MORE BULLETS OR WHAT?
	with TopDecal
	draw_circle(x-__view_get( e__VW.XView, 0 )+16,y-__view_get( e__VW.YView, 0 )+16,32,0)
	with HyperCrystal
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),48,0)
	with BallMom
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),48,0)
	with Technomancer
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),48,0)
	with Bones
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),32,0)
	with JellyFish
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),24,0)
	with BigMachine
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+32,110+random(3),0)
	with Corpse
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),max(0,100-image_index*40),0)
	with CrownPickup
	{
		draw_sprite_ext(sprCrownLightWhite,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+32,1,1,0,c_white,0.2)
		draw_sprite_ext(sprCrownLightWhite,1,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),1,100,5,c_white,0.2)
		//draw_rectangle(x-16-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),x+16-__view_get( e__VW.XView, 0 ),min(y,__view_get( e__VW.YView, 0 ))-__view_get( e__VW.YView, 0 ),0)
	}
	with Morph
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),30+random(3),0)
	with Sheep
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),90+random(4),0)

	draw_set_color(c_black)
/*
	with CrownPickup
	{
		draw_sprite_ext(sprCrownLightWhite,0,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 )+32,1,1,0,c_white,1)
		draw_sprite_ext(sprCrownLightWhite,1,x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),1,y+16,5,c_white,1)
		//draw_rectangle(x-16-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),x+16-__view_get( e__VW.XView, 0 ),min(y,__view_get( e__VW.YView, 0 ))-__view_get( e__VW.YView, 0 ),0)
	}*/
	with Player
	{
		if race = 3
		draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),80+random(3),0)
		else
		draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),45+random(3),0)
	}
	with Explosion
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),110+random(3),0)
	with Throne2
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),110+random(8),0)
	with BecomeThrone2
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),110+random(8),0)
	with Portal
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),40+random(6),0)
	with MeatExplosion
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),40+random(3),0)
	with Tangle
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),20+random(3),0)
	with Crystal
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),30,0)
	with Flame
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),30+random(3),0)
	with Torch
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),30+random(3),0)
	with Barrel
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),30+random(3),0)
	with Terminal
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),20+random(3),0)
	with MushroomLandEntranceLabs
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),20+random(3),0)
	with CrownPickup
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),20,0)
	with BecomeBallBoss
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),40,0)
	with BallBoss
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),40,0)
	with Statue
	draw_circle(x-__view_get( e__VW.XView, 0 ),y-__view_get( e__VW.YView, 0 ),40,0)
	//with Corpse
	//draw_circle(x-view_xview,y-view_yview,max(0,80-image_index*40),0)
	surface_reset_target()
	}



}
