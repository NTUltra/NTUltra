darkness = 0
dark=noone;
right = 1;
bloom = true;
if !instance_exists(BGFXLayer)
	instance_create(x,y,BGFXLayer);
if !instance_exists(CorpseCollector)
	instance_create(x,y,CorpseCollector);
if instance_exists(Player)
{
	if scrIsCrown(19)
	{
		darkness = 1
	}
	else if Player.area == 115 || round(Player.area*0.5) = Player.area*0.5 && Player.area != 10 &&Player.area!=118 &&Player.area!=106
	&& Player.area != 114 && !scrIsGamemode(25) && Player.area!=104&&Player.area!=8&&Player.area!=108&&Player.area!=122
	&& Player.area != 128 && Player.area != 129 && Player.area != 130 && Player.area != 131 && Player.area != 132 && Player.area != 134
	&&Player.area!=138 &&Player.area!=140
		darkness = 1
	if Player.ultra_got[11]//BRAIN STYLE
		darkness = 0;
}
if darkness = 1
{
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		dark = surface_create(427,__view_get( e__VW.HView, 0 ))
	else
		dark = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
surface_set_target(dark)
draw_clear(c_white)
surface_reset_target()}

wave = 0
fogscroll = 0
depth = -10;
bloomSurface = -1;