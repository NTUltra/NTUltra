/// @description Draw Text
var vx = round(camera_get_view_x(view_camera[0]));
var vy = round(camera_get_view_y(view_camera[0]));
var vh = round(camera_get_view_height(view_camera[0]));
var vw = round(camera_get_view_width(view_camera[0]));
if text == "SHOWLOGO"
{
	if !audio_is_playing(sndLogoLoop)
		snd_loop(sndLogoLoop);
	var xxx = vx + vw*0.5;
	var yyy = vy + vh*0.5;
	draw_sprite(sprLogo,18,xxx,yyy);
	gpu_set_blendmode(bm_add);
	var ang = 0
	var dt = 1;
	if UberCont.normalGameSpeed == 60
		dt = 0.5;
	repeat(8)
	{
		draw_sprite_ext(sprLogoGlow,-1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+lengthdir_x(4+sin(wave)*(2+random(1)),ang),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+lengthdir_y(4+sin(wave)*(2+random(1)),ang),1,1,0,c_white,0.05)
		ang += 360/8;
		wave += random(0.02) * dt;
	}
	gpu_set_blendmode(bm_normal)
	wave += 0.05 * dt;
}
else if text != ""
{
	if audio_is_playing(sndLogoLoop)
		audio_stop_sound(sndLogoLoop);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var xx = vx + vw*0.5
	var yy = vy + vh*0.5;
	draw_text_colour(xx + 1,yy,dullText,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx + 1,yy + 1,dullText,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx,yy + 1,dullText,c_black,c_black,c_black,c_black,1);
	draw_set_colour(c_gray);
	scrDrawTextColours(xx,yy, text);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

} else if audio_is_playing(sndLogoLoop)
	audio_stop_sound(sndLogoLoop);
