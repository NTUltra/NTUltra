/// @description Boss intro
if alarm[0] == 0
	exit;
var tx = nx;
var ty = ny;
var yy = y;
if alarm[0] > introDuration - shiftInDuration
{
	ty = lerp(ny, ny - 64, clamp((alarm[0] - introDuration + shiftInDuration)/shiftInDuration,0,1));
	yy = lerp(y, y + 240, clamp((alarm[0] - introDuration + shiftInDuration)/shiftInDuration,0,1));
}
else if alarm[0] < shiftInDuration
{
	ty = lerp(ny - 64, ny, clamp(alarm[0]/shiftInDuration,0,1));
	yy = lerp(y + 240, y, clamp(alarm[0]/shiftInDuration,0,1));
}
draw_sprite_ext(sprite_index,image_index,x,yy,1,1,image_angle,c_white,1);
draw_set_valign(fa_top);
draw_set_font(fntB);
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
//if alarm[0] < introDuration - shiftInDuration
//{
	if UberCont.normalGameSpeed == 60
	{
		x += xShift*accelerate * 0.5;
		y += yShift*accelerate * 0.5;
		nx -= 1*accelerate * 0.5;
		if accelerate < 1
			accelerate += 0.01;
		else
			accelerate = 1;
	}
	else
	{
		x += xShift*accelerate;
		y += yShift*accelerate;
		nx -= 1*accelerate;
		if accelerate < 1
			accelerate += 0.02;
		else
			accelerate = 1;
	}
//}
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