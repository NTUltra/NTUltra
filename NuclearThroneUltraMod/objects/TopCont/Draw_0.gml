wave += 1


with BoltTrail
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,theColour,1);

with Wall
{


draw_sprite_part_ext(outspr,outindex,l,r,w,h,x-4+l,y-12+r,1,1,c_white,1)//this draws white lines WHAT

}
with VikingWall
{


draw_sprite_part_ext(outspr,outindex,l,r,w,h,x-4+l,y-12+r,1,1,c_gray,1)//this draws white lines WHAT
}

/*with Wall
{

//CORRECT
if !place_free(x,y-16) and !place_free(x-16,y)
draw_sprite_part(sprWall103Out2,-1,0,0,4,4,x-4,y-12)

//CORRECT
if !place_free(x,y-16) and !place_free(x+16,y)
draw_sprite_part(sprWall103Out2,-1,20,0,4,4,x-4+20,y-12)


if !place_free(x,y+16) and !place_free(x-16,y)
draw_sprite_part(sprWall103Out2,-1,0,20,4,4,x-4,y-12+20)


if !place_free(x,y+16) and !place_free(x+16,y)
draw_sprite_part(sprWall103Out2,-1,20,20,4,4,x-4+20,y-12+20)
}*/

//with Wall
//draw_sprite(outspr,outindex,x,y)

/*mask test
with enemy
{
if sprite_exists("mask_index") and mask_index != -1
draw_sprite_ext(mask_index,-1,x,y,1,1,0,c_black,0.2)
}

with projectile
{
if sprite_exists("mask_index") and mask_index != -1
draw_sprite_ext(mask_index,-1,x,y,1,1,image_angle,c_black,0.2)
}*/

with FrozenEnemy
{
image_alpha=0.5;
draw_self();
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
draw_sprite(topspr,topindex,x,y-8)
with VikingWall
draw_sprite_ext(topspr,topindex,x,y-8,1,1,image_angle,c_gray,1)

//with Bones
//draw_sprite_ext(sprite_index,-1,x,y,image_xscale,1,0,c_white,1)

with TopDecal
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_white,1)

with WaterMine
draw_self();

with RavenFly
{
draw_sprite_ext(sprite_index,-1,x,y+z,right,1,0,c_white,1)
with Wall
{
	if x < other.x+32 and x > other.x-32 and y > other.y and y < other.y+64
	draw_sprite(topspr,topindex,x,y-8)
}
}
with InvertedRavenFly
{
draw_sprite_ext(sprite_index,-1,x,y+z,right,1,0,c_white,1)
with Wall
{
if x < other.x+32 and x > other.x-32 and y > other.y and y < other.y+64
draw_sprite(topspr,topindex,x,y-8)
}
}
with LilHunterFly
{
draw_sprite_ext(sprite_index,-1,x,y+z,right,1,0,c_white,1)
with Wall
{
if x < other.x+32 and x > other.x-32 and y > other.y and y < other.y+64
draw_sprite(topspr,topindex,x,y-8)
}
}
//Eagle eyes chest content
if(instance_exists(Player)){
if(Player.skill_got[19]){
with WeaponChest
{
	if(sprite_index!=sprWeaponChestBig){
		draw_sprite_ext(wep_sprt[wep],0,x-7,y-14,1,1,0,c_white,0.75);
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
	}
}
with GoldChest
{
	draw_sprite_ext(wep_sprt[wep],0,x-7,y-14,1,1,0,c_white,0.75);
}
}}

with StreetLight
{
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,1,0,c_white,1)
with Wall
{
if x < other.x+32 and x > other.x-32 and y > other.y and y < other.y+64
draw_sprite(topspr,topindex,x,y-8)
}
}



with CrystalShield
{
draw_sprite(sprite_index,-1,x+max(0,random(time/60)-2),y+max(0,random(time/90)-2))
with Wall
{
if x < other.x+32 and x > other.x-32 and y > other.y-8 and y < other.y+64
draw_sprite(topspr,topindex,x,y-8)
}
}

with CrownPickup
{
//draw_sprite_ext(sprCrownLight,0,x,y+16,1,1,0,c_white,0.2)
//draw_sprite_ext(sprCrownLight,1,x,min(y,__view_get( e__VW.YView, 0 ))-16,1,(__view_get( e__VW.YView, 0 )-y)/32,0,c_white,0.2)
draw_sprite_ext(sprCrownLight,0,x,y+32,1,1,0,c_white,0.2)
draw_sprite_ext(sprCrownLight,1,x,y,1,100,5,c_white,0.2)
}

with Player
{
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
if race=18
event_perform(ev_draw,0);//on top of all things cause I'm an angel!


}
//FOGGGG

if instance_exists(Player){
if Player.area = 2 || Player.area=8
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

fogscroll += 0.5
if fogscroll > 480
fogscroll -= 480

with Statue
{
	draw_self();
}
with Notice{draw_self();}
with EuphoriaShield{draw_self();}
with EnemyBullet1Square
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
draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1);
}
}
with BigBadBat {
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}

with InvertedChesireCatTail{
if visible&&instance_exists(ChesireCat){
draw_sprite_ext(sprite_index,-1,x,y,ChesireCat.right,1,0,c_white,1);
}
}
with InvertedChesireCat{
if visible{
draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1);
}
}
with SquareBat
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
}
with GhostGuardian
{
	draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)	
}


if instance_exists(Player){
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
if Player.ultra_got[11]=1{
    with enemy//brainwashed enemy
    {
    //draw_text(x,y,string(team));
        if  team>=4
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
/*mask testwith Wall
draw_sprite_ext(sprWall1Bot,-1,x,y,1,1,0,c_black,0.2)*/
with Hand
{
	draw_self();	
}

scrDrawBloom()

if darkness = 1 && surface_exists(dark)
{draw_set_blend_mode(bm_subtract)
draw_surface(dark,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
draw_set_blend_mode(bm_normal)}


if !instance_exists(MenuGen)
{
with Spiral
{
draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_white,1)
draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_black,0.8-image_xscale)
}
//scrDrawHUD()
}
