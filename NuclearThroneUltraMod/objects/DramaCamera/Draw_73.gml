/// @description Boss intro
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
draw_set_font(fntB);
var tx = xx + vw*0.5
var ty = yy + vh * 0.5;
draw_set_colour(c_black);
draw_text_ext(tx + 2,ty,name,0,320);
draw_text_ext(tx - 1,ty,name,0,320);
draw_text_ext(tx,ty + 3,name,0,320);
draw_text_ext(tx,ty - 1,name,0,320);
draw_text_ext(tx - 1,ty + 3,name,0,320);
draw_text_ext(tx - 1,ty - 1,name,0,320);
draw_text_ext(tx + 2,ty + 3,name,0,320);
draw_text_ext(tx + 2,ty - 1,name,0,320);
draw_set_colour(c_white);
draw_text_ext(tx,ty,name,0,320);
//draw_text(xx + vw*0.5,yy + vh * 0.5,name);
draw_set_font(fntM);
if UberCont.normalGameSpeed == 60
{
	x += xShift * 0.5;
	y += yShift * 0.5;
}
else
{
	x += xShift;
	y += yShift;
}
/*
if x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.4 and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.6 and y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.4 and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.6
{


with BanditBoss
{
snd_play(sndBigBanditIntro)
depth = -99
}
with InvertedBanditBoss
{
snd_play(sndBigBanditIntro)
depth = -99
}
with BigVulture
{
snd_play(sndBigVultureCharge)
depth = -99
}
with LilHunter
{
snd_play_2d(sndLilHunterAppear)
depth = -99
}
with InvertedLilHunter
{
snd_play_2d(sndLilHunterAppear)
depth = -99
}
with ScrapBoss
{
snd_play(sndBigDogIntro)
depth = -99
}
with InvertedScrapBoss
{
snd_play(sndBigDogIntro)
depth = -99
}
with HotDrake
{
snd_play(sndFlareExplode)
depth = -99
}
with InvertedHotDrake
{
snd_play(sndFlareExplode)
depth = -99
}

with AssassinBoss
{
snd_play(sndAssassinPretend)
depth = -99
}

with InvertedAssassinBoss
{
snd_play(sndAssassinPretend)
depth = -99
}

with BallMom
{
	depth = -99;	
}
with HyperCrystal
{
	depth = -99;	
}
with Technomancer
{
	depth = -99;	
}
}
urgent += 1

*/