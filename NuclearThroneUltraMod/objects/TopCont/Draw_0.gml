/*
with BoltTrail
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,theColour,1);
*/
with FrozenEnemy
{
	event_perform(ev_draw,0);
}
with FrozenPlayer
{
image_alpha=0.5;
draw_self();
}
	with Top
	{
		if visible{
			draw_sprite(sprite_index,image_index,x+16,y-8)
			draw_sprite(sprite_index,image_index,x,y-8+16)
			draw_sprite(sprite_index,image_index,x+16,y-8+16)
			draw_sprite(sprite_index,image_index,x,y-8)
		}
	}
	//draw_sprite_ext(sprite_index,-1,x,y-8,1,1,0,background_color,1)
	with TopSmall
	draw_sprite(sprite_index,image_index,x,y-8)
	//draw_sprite_ext(sprite_index,-1,x,y-8,1,1,0,background_color,1)
	with Wall
	{
		draw_sprite_part_ext(outspr,outindex,l,r,w,h,x-4+l,y-12+r,1,1,colour,1);
	}
	with Wall {
		draw_sprite_ext(topspr,topindex,x,y-8,1,1,image_angle,colour,1);
	}
	with ElementorWall
	{
		if !visible
		{
			draw_sprite(sprElementorWallBlink,0,x,y);
		}
	}
	with ElementorWallDisappear
	{
		draw_self();	
	}
	with WallWireFrame
	{
		draw_sprite(sprite_index,image_index,x,y);
	}
	
	with Teleport
	{
		event_perform(ev_draw,0);	
	}
if instance_exists(Spiral)
	with Bones
		draw_sprite_ext(sprite_index,-1,x,y,image_xscale,1,0,c_white,1)

with TopDecal
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_white,image_alpha)

with WaterMine
draw_self();
with JumpDust
{
	draw_self();	
}
with JumpFishBoost
{
	draw_self();	
}
with Feather
{
	event_perform(ev_draw,0);
}
with CrownOfLucked
	event_perform(ev_draw,0);
with AtomPulse
{
	event_perform(ev_draw,0);	
}
with RavenFly
{
	draw_sprite_ext(sprite_index,-1,x,y+z,image_xscale,1,0,c_white,1)
}
with UltraRavenFly
{
	draw_sprite_ext(sprite_index,-1,x,y+z,image_xscale,1,0,c_white,1)
}

with InvertedRavenFly
{
	draw_sprite_ext(sprite_index,-1,x,y+z,image_xscale,1,0,c_white,1)
}
with LilHunterFly
{
	draw_sprite_ext(sprite_index,-1,x,y+z,image_xscale,1,0,c_white,1)
}
//Eagle eyes chest content
if(instance_exists(Player)){
if(Player.skill_got[23]){
	with UltraChest
	{
		draw_sprite_ext(wep_sprt[weps[currentVisibleWep]],0,x-7,y-14,1,1,0,c_white,0.75);	
	}
with WeaponChest
{
	if(sprite_index!=sprWeaponChestBig){
		draw_sprite_ext(wep_sprt[wep[0]],0,x-7,y-14,1,1,0,c_white,0.75);
		if heavyHeart
		{
			draw_sprite_ext(wep_sprt[wep[1]],0,x-7,y-24,1,1,0,c_white,0.75);
		}
		/*
		Also show tier, this is ugly man
		draw_set_halign(fa_left);
		var tier = string(wep_area[wep]);
		var sw = string_width(tier) + 2 + (sprite_get_bbox_right(sprWepTier)*0.5);
		var sprW = sprite_get_width(wep_sprt[wep]) + 6;
		var tw = sprW + sw;
		var tx = x - (tw*0.5);
		var ty = y-14;
		draw_sprite_ext(wep_sprt[wep],0,tx,y-14,1,1,0,c_white,0.75);
		tx += sprW;
		draw_text_color(tx,ty,tier,c_black,c_black,c_black,c_black,0.75)
		draw_text_color(tx+1,ty,tier,c_black,c_black,c_black,c_black,0.75)
		draw_text_color(tx+1,ty-1,tier,c_black,c_black,c_black,c_black,0.75)
		draw_text_color(tx,ty-1,tier,c_white,c_white,c_white,c_white,0.75)
		tx += sw;
		draw_sprite_ext(sprWepTier,0,tx,ty+1,1,1,0,c_white,0.75);
		*/
	}
	else
	{
		draw_sprite_ext(wep_sprt[wep1],0,x-7,y-16,1,1,0,c_white,0.75);
		draw_sprite_ext(wep_sprt[wep2],0,x-7,y-26,1,1,0,c_white,0.75);
		draw_sprite_ext(wep_sprt[wep3],0,x-7,y-36,1,1,0,c_white,0.75);
		if heavyHeart
			draw_sprite_ext(wep_sprt[wep4],0,x-7,y-46,1,1,0,c_white,0.75);
	}
}
with GoldChest
{
	draw_sprite_ext(wep_sprt[wep[0]],0,x-7,y-14,1,1,0,c_white,0.75);
	if heavyHeart
	{
		draw_sprite_ext(wep_sprt[wep[1]],0,x-7,y-24,1,1,0,c_white,0.75);
	}
}
}}

with StreetLight
{
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,1,0,c_white,1)

}



with CrystalShield
{
	draw_sprite_ext(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2),1,1,image_angle,c_white,1)
}

with CrownPickup
{
//draw_sprite_ext(sprCrownLight,0,x,y+16,1,1,0,c_white,0.2)
//draw_sprite_ext(sprCrownLight,1,x,min(y,__view_get( e__VW.YView, 0 ))-16,1,(__view_get( e__VW.YView, 0 )-y)/32,0,c_white,0.2)
draw_sprite_ext(sprCrownLight,0,x,y+32,1,1,0,c_white,0.2)
draw_sprite_ext(sprCrownLight,1,x,y,1,100,5,c_white,0.2)
}
with MindField
{
	event_perform(ev_draw,0);	
}
with TeleportationField
{
	event_user(0);
}
with AnimDestroyTop
{
	draw_self();	
}
with Player
{
	/*
	if (KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2) and race = 9
	{
		draw_set_alpha(0.5)
		draw_set_color(c_black)
		draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
		draw_set_alpha(1)
		with hitme
		{if visible && point_distance(x,y,other.x,other.y) < 96
		event_perform(ev_draw,0)}
		with projectile
		{if point_distance(x,y,other.x,other.y) < 96
		event_perform(ev_draw,0)}
	}
	*/
	if (race == 18 || jump > 0) && !instance_exists(PlayerInPortal)
		event_perform(ev_draw,0);//on top of all things cause I'm an angel!


}
//FOGGGG

if instance_exists(Player){
if Player.area = 2 || Player.area=8 || Player.area == 126 || Player.area == 127
{draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog2,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)}
if Player.area = 102
{draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprFog102,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)}
}
if UberCont.normalGameSpeed == 60
	fogscroll += 0.25
else
	fogscroll += 0.5
if fogscroll > 480
fogscroll -= 480

with SpinSlash
{
	if visible
		draw_self();
}
with Statue
{
	draw_self();
}
with EuphoriaShield{draw_self();}
with EuphoriaShieldEnd{draw_self();}
with CampChar
{
	draw_self();
}
with ElementorHeadMenu
{
	event_perform(ev_draw,0);	
}
with EnemyDamageCircle
{
	event_user(0);
}
with EnemyBullet1Square
{
	if draw
		draw_self();
}
with BoltTrailDrone
{
	event_perform(ev_draw,0);
}
with LightningDrone
{
	event_perform(ev_draw,0);
}
with EnergyBackStabber
{
	draw_self();
}
with LobGrenade
{
	if !visible
		event_perform(ev_draw,0);	
}
with DropGrenade
{
	if !visible
		event_perform(ev_draw,0);	
}
with ExploderPopoExplode
{
	event_perform(ev_draw,0);	
}
with FlexibleElbowsSlap {
	event_perform(ev_draw,0);
}
with SuckRad
{
	event_perform(ev_draw,0);
}
with Ray
{
	event_perform(ev_draw,0);
}
with ScrapBossMissile
{
	draw_sprite_ext(trailSprite,-1,x,y,1,1,direction,c_white,1)
	if draw
		draw_sprite_ext(sprite_index,-1,x,y,1,1,direction,c_white,1);
	else
		draw_sprite_ext(spr_hurt,0,x,y,1.1,1.1,direction,c_white,1);
}
with InvertedGuardianBulletSpawn
{
	draw_self();
}
with MeleeParent
{
	if visible
		draw_self();	
}
with SquareWave
{
	draw_self();	
}
with VoidRipperBurst
{
	draw_self();	
}
/*
with GhettoBlast
{
	if visible
		draw_self();
}*/
with GhostEffect
{
	draw_self();
}
with GhostSlash
{
	draw_self();
}
with GhostShank
{
	draw_self();
}
with GhostSpearShank
{
	draw_self();
}

//Flying enemies
with ChesireCatTail{
	if visible&&instance_exists(ChesireCat){
	draw_sprite_ext(sprite_index,-1,x,y,ChesireCat.right,1,0,c_white,1);
	}
}
with ChesireCat{
	if visible{
		if forceAnimationDuration > 0 && !(sprite_index == spr_hurt && image_index < 1)
		{
			draw_sprite_ext(forceAnimation,forceAnimationIndex,x,y,right,1,image_angle,c_white,1)
		}
		else
		{
			draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
		}
	}
}
with BigBadBat {
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}

with InvertedChesireCatTail{
	if visible&&instance_exists(InvertedChesireCat){
		draw_sprite_ext(sprite_index,-1,x,y,InvertedChesireCat.right,1,0,c_white,1);
	}
}
with InvertedChesireCat{
	if visible
	{
		if forceAnimationDuration > 0 && !(sprite_index == spr_hurt && image_index < 1)
		{
			draw_sprite_ext(forceAnimation,forceAnimationIndex,x,y,right,1,image_angle,c_white,1)
		}
		else
		{
			draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
		}
	}
}
with DiscTrail
{
	draw_set_color(theColour);
	draw_self();
	draw_set_color(c_white);
}
with Yoyo
{
	draw_self();	
}
with GyroBurst
{
	draw_self();	
}
with Disc
{
	draw_self();	
}
with PermanentDisc
{
	draw_self();	
}
with EnemyDisc
{
	draw_self();	
}
with Blade
{
	draw_self();	
}
with PingPongBall
{
	draw_self();	
}
with ChunkyBlade {
	draw_self();	
}
with BoomStick {
	draw_self();	
}
with SplitBlade {
	draw_self();	
}
with SuperSplitBlade {
	draw_self();	
}
with UltraBlade {
	draw_self();	
}
with BladeSplintershooter {
	draw_self();	
}
with SquareBat
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}
with CloudFlyer
{
	draw_sprite_ext(sprite_index,-1,x,y,right,image_yscale,image_angle,c_white,1)
}
with CloudKnifer
{
	if depth < 0
		draw_sprite_ext(sprite_index,-1,x,y,right,image_yscale,image_angle,c_white,image_alpha)
}
with CloudShooter
{
	draw_sprite_ext(sprite_index,-1,x,y,right,image_yscale,image_angle,c_white,1)
}
with BecomeCloudBoss
{
	if depth < 0
		draw_sprite_ext(sprite_index,-1,x,y,right,image_yscale,image_angle,c_white,image_alpha)
}
with CloudBoss
{
	draw_sprite_ext(sprite_index,-1,x,y,right,image_yscale,image_angle,c_white,image_alpha)
}
with CourtyardTankShield
{
	if visible
		draw_self();
}
with CourtyardGuardian
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}
with WallCrawler
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
}
with GhostGuardian
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)	
}
with InvertedCrownGlutton
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}
with BigBadBat
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)	
}
with UltraProtector
{
	event_user(0);
}
with GoldImmuneTotem
{
	event_user(0);
}
with HealFX
{
	draw_self();
}
with Snooze
{
	draw_self();
}
with SnoozeEnd
{
	draw_self();	
}
if instance_exists(Player){
	if Player.ultra_got[74] && Player.altUltra
	{
		//Skeleton Reminisce
		with BloodBullet
			draw_self();
		with MeatExplosion
			draw_self();
		with BloodSlash
			draw_self();
		with BloodSlashRetail
			draw_self();
		with BloodGrenade
			draw_self();
	}
if Player.ultra_got[44]=1&&instance_exists(Marker){
if Player.skill_got[5]=1{
with Marker//thronebutt and ultra d hunter
draw_sprite_ext(sprMarkerCrosshairTB,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
}
else{
with Marker//drawing markers on top layer for ULTRA D Hunter CRACKSHOT
draw_sprite_ext(sprMarkerCrosshair,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
    }
}
// EYES ULTRA C BRAINWASH
if Player.ultra_got[11] {
    with enemy//brainwashed enemy
    {
    //draw_text(x,y,string(team));
        if  team>=5
        {
			draw_sprite_ext(sprMindPower,Player.wave,x,y,right,1,0,c_white,1)
        //draw_text(x,y,"I am a fool")
        //draw_text(target.x,target.y,"target")
        }
    }
    
    /*
    with projectile
    {
    
     if  team==4{
                draw_text(x,y,"!");
                draw_set_blend_mode(bm_add)
                draw_sprite_ext(sprite_index,image_index,x,y,4,4,image_angle,c_green,0.2)
                draw_set_blend_mode(bm_normal)
                }
                
    }*/
}
if Player.justAsheep
{
	with enemy {
		if point_distance(x,y,Player.x,Player.y) < 96
			draw_sprite_ext(sprJustASheep,Player.wave,x,y,1,1,0,c_white,1)
	}
}
}
/* This is Hunter's ultra a damage boost
with enemy{

if(point_distance(x,y,Player.x,Player.y)<100)
        {
        draw_text(x,y,string(point_distance(x,y,Player.x,Player.y)/80))
        }
        else
        {
        draw_text_color(x,y,string(point_distance(x,y,Player.x,Player.y)/25),c_blue,c_blue,c_blue,c_blue,1)
        }
         draw_text(x,y+8,string(point_distance(x,y,Player.x,Player.y)))
}
*/
with Hand
{
	draw_self();	
}
with AngelActive
{
	draw_self();	
}
with AngelReActive
{
	draw_self();	
}
with SerpentStrike
{
	event_perform(ev_draw,0);
}
with SnakeBiteFx
{
	event_perform(ev_draw,0);
}
with HorrorBeam
{
	image_yscale = 1+random(1.5)
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*0.5,image_angle,c_white,1)
}
with HorrorBigBall
{
	draw_self();	
}
with BecomeHorrorBigBall
{
	draw_self();	
}
with EyesBrainWashFX
{
	event_user(0);	
}
with Player
{
	if ultra_got[94] && instance_exists(PlayerAlarms2)
	{
		draw_sprite_ext(sprElementorFreeze,0,x,y,image_xscale,image_yscale,0,c_white,
		lerp(0.5,0.8,( 1 + PlayerAlarms2.alarm[11] ) / 6));
	}
}
with CrescentMoon
{
	event_perform(ev_draw,0);
}
with SheepSuperCharge
{
	draw_self();
}
if bloom
	scrDrawBloom()
scrDarkness()
if darkness = 1 && surface_exists(dark)
{
	var drawDark = true;
	with UberCont
	{
		if isPausedInTheDark
		{
			drawDark = false;
			event_user(0);
		}
	}
	if (drawDark)
	{
		//draw_set_blend_mode(bm_subtract)
		gpu_set_blendmode(bm_subtract);
		draw_surface(dark,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
		gpu_set_blendmode(bm_normal);
		//draw_set_blend_mode(bm_normal)
	}
	
}
if !instance_exists(MenuGen) && !instance_exists(ThroneIISpiral)
{
	with Spiral
	{
		draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale*2,image_yscale*2,image_angle,c_white,1)
		draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale*2,image_yscale*2,image_angle,c_black,0.8-image_xscale)
	}
}
with SpikeTrap
{
	if image_index == 1
		draw_self();
}
with Notice{draw_self();}