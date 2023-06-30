var yy = __view_get( e__VW.YView, 0 );

if isPaused = 1
{
var res = scrAreaName(area,subarea,loops);
var text = res[0];
var upsideDown = res[1];

//}

draw_sprite_ext(pauseimg,0,__view_get( e__VW.XView, 0 ),yy,1,1,0,c_white,1)//0.35,
draw_set_color(c_black)
draw_set_blend_mode(bm_normal)
draw_set_alpha(0.6)
draw_rectangle(__view_get( e__VW.XView, 0 ),yy,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),yy+__view_get( e__VW.HView, 0 ),0)
draw_set_alpha(1)
draw_rectangle(__view_get( e__VW.XView, 0 ),yy,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),yy+48,0)
draw_rectangle(__view_get( e__VW.XView, 0 ),yy+__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),yy+__view_get( e__VW.HView, 0 )-48,0)
/*draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(view_xview+view_wview/2+1,view_yview+26,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
draw_text(view_xview+view_wview/2+1,view_yview+27,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
draw_text(view_xview+view_wview/2,view_yview+27,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
draw_set_color(c_white)
draw_text(view_xview+view_wview/2,view_yview+26,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
*/
//OPTIONS

//DRAW OPTIONS

if UberCont.opt_bossintro=1
bossintro="ON"
else
bossintro="OFF"

if UberCont.opt_timer=1
timer="ON"
else
timer="OFF"


var d = " DIFFICULTY: "+string(hard);

txt0 = "#OPTIONS############################CONTINUE [ESC] ------------ QUIT [ENTER]"

if UberCont.opt_loading == 4
	var loadspeed = "MAX#"
else
	var loadspeed = string(scrAddZero(round(UberCont.opt_loading*100),2))+"%#";
var sideAspect = UberCont.opt_sideart;
if sideAspect >= sprite_get_number(sprSideArt)
	sideAspect = "";
else
	sideAspect = string(sideAspect);
var fpsMode = "#OFF";
	if UberCont.normalGameSpeed == 60
		fpsMode = "#ON";
txt1 = "######AUDIO#MUSIC VOLUME#SFX VOLUME#AMBIENT VOLUME#3D AUDIO##VISUALS#FULL SCREEN#CROSSHAIR#SIDE ART / ASPECT RATIO#DAMAGE INDICATORS#CAMERA FOLLOW AIM#HUD DESCRIPTION##OTHER#SCREEN SHAKE#FREEZE FRAMES#LOADING SPEED#CAPTURE MOUSE#BOSS INTROS#TIMER#60 FPS [BETA]"
txt2 = "#######"+string(scrAddZero(round(UberCont.opt_musvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_sfxvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_ambvol*100),2))
+"%#"+string(scrOnOff(UberCont.opt_3d_audio))+"###"+string(scrOnOff(UberCont.opt_fulscrn))+"#"+string(UberCont.opt_crosshair+1)+"#"+sideAspect+"#"+
string(scrOnOff(UberCont.opt_dmgindicator))+"#"+string(scrOnOff(UberCont.opt_camera_follow))+"#"//
+string(scrOnOff(UberCont.opt_hud_des))+
"###"+string(scrAddZero(round(UberCont.opt_shake*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_freeze*100),2))+"%#"+loadspeed+string(scrOnOff(UberCont.opt_mousecp))+"#"+string(bossintro)+"#"+string(timer)+fpsMode



stxt0 = "#OPTIONS#GAMEMODE: "+UberCont.gamemode[UberCont.opt_gamemode[0]];
stxt1 = "######AUDIO######VISUALS########OTHER####"
stxt2 = txt2


with MusVolSlider
event_perform(ev_draw,0)
with SfxVolSlider
event_perform(ev_draw,0)
with AmbVolSlider
event_perform(ev_draw,0)
with ThreeDAudioToggle
event_perform(ev_draw,0)

with FullScreenToggle
event_perform(ev_draw,0)
with CursorUpDown
event_perform(ev_draw,0)
with SideArtUpDown
event_perform(ev_draw,0)
with DamageIndicatorToggle
event_perform(ev_draw,0)
with CameraFollowToggle
event_perform(ev_draw,0)
with HighQualityToggle
event_perform(ev_draw,0)
//with GamePadToggle
//event_perform(ev_draw,0)
//with AutoAimUpDown
//event_perform(ev_draw,0)

with ShakeUpDown
event_perform(ev_draw,0)
with MouseCPToggle
event_perform(ev_draw,0)
with FreezeFrameUpDown
event_perform(ev_draw,0)
with LoadingScreenSpeedUpDown
event_perform(ev_draw,0)
with BossIntroToggle
event_perform(ev_draw,0)
with TimerToggle
event_perform(ev_draw,0)
with FPSToggle
event_perform(ev_draw,0)

draw_set_font(fntM)
draw_set_valign(fa_top)
//Top text...
var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5;
draw_set_color(c_gray)
draw_set_halign(fa_left)
var kt = "KILLS: "+string(kills)+" "
var xxx = xx - (string_width(kt+text+d)*0.5);
draw_text(xxx,yy,string_hash_to_newline("####"+kt))
xxx = xxx + string_width(kt);
if upsideDown
{
	draw_set_halign(fa_center)
	draw_text_transformed(xxx+(string_width(text)*0.5),yy+(string_height(text)*5),string_hash_to_newline(text),-1,-1,0)
}
else
	draw_text(xxx,yy,string_hash_to_newline("####"+text))
draw_set_halign(fa_left)
xxx = xxx + string_width(text);
draw_text(xxx,yy,string_hash_to_newline("####"+d))

draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text(xx,yy+1,string_hash_to_newline(string(txt0)))
draw_text(xx+1,yy+1,string_hash_to_newline(string(txt0)))
draw_text(xx+1,yy,string_hash_to_newline(string(txt0)))
draw_set_color(c_gray)
draw_text(xx,yy,string_hash_to_newline(string(txt0)))
draw_set_color(c_white)
draw_text(xx,yy,string_hash_to_newline(string(stxt0)))


draw_set_halign(fa_right)
draw_set_color(c_black)
draw_text(xx-8,yy+1,string_hash_to_newline(string(txt1)))
draw_text(xx-7,yy+1,string_hash_to_newline(string(txt1)))
draw_text(xx-7,yy,string_hash_to_newline(string(txt1)))
draw_set_color(c_gray)
draw_text(xx-8,yy,string_hash_to_newline(string(txt1)))
draw_set_color(c_white)
draw_text(xx-8,yy,string_hash_to_newline(string(stxt1)))

draw_set_halign(fa_left)

draw_set_color(c_black)
draw_text(xx+8,yy+1,string_hash_to_newline(string(txt2)))
draw_text(xx+9,yy+1,string_hash_to_newline(string(txt2)))
draw_text(xx+9,yy,string_hash_to_newline(string(txt2)))
draw_set_color(c_gray)
draw_text(xx+8,yy,string_hash_to_newline(string(txt2)))
draw_set_color(c_white)
draw_text(xx+8,yy,string_hash_to_newline(string(stxt2)))

/////ALLRIGHT THATS OPTIONS

}

if alarm[1]>0
draw_sprite_ext(pauseimg,0,__view_get( e__VW.XView, 0 ),yy,1,1,0,c_white,1)

/* */
/*  */
