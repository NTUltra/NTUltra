/// @description Boss intro
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,1);
draw_set_valign(fa_top);
draw_set_font(fntB);
draw_set_colour(c_black);
draw_text_ext(nx + 2,ny,name,0,320);
draw_text_ext(nx - 1,ny,name,0,320);
draw_text_ext(nx,ny + 3,name,0,320);
draw_text_ext(nx,ny - 1,name,0,320);
draw_text_ext(nx - 1,ny + 3,name,0,320);
draw_text_ext(nx - 1,ny - 1,name,0,320);
draw_text_ext(nx + 2,ny + 3,name,0,320);
draw_text_ext(nx + 2,ny - 1,name,0,320);
draw_set_colour(c_white);
draw_text_ext(nx,ny,name,0,320);
//draw_text(xx + vw*0.5,yy + vh * 0.5,name);
draw_set_font(fntM);
if UberCont.normalGameSpeed == 60
{
	x += xShift*accelerate * 0.5;
	y += yShift*accelerate * 0.5;
	nx -= 1*accelerate * 0.5;
	//ny -= yShift*accelerate * 0.5;
	if accelerate < 1
		accelerate += 0.05;
	else
		accelerate = 1;
}
else
{
	x += xShift*accelerate;
	y += yShift*accelerate;
	nx -= 1*accelerate;
	//ny -= yShift*accelerate;
	if accelerate < 1
		accelerate += 0.1;
	else
		accelerate = 1;
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