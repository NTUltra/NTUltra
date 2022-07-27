darkness = 0
dark=noone;
skillscroll = 0;
skillscrollmax = 0;
holdExplainUltraModTimer = 0;
holdExplainWepModTimer = 0;
holdExplainMutation = 0;
holdExplainGamemode = 0;
if instance_exists(Player)
{
	if Player.crown == 19
	{
		darkness = 1
		alarm[2] = 2;
	}
	else if Player.area == 115 || round(Player.area*0.5) = Player.area*0.5 && Player.area != 10 &&Player.area!=118 &&Player.area!=106
	&& Player.area != 114 && UberCont.opt_gamemode != 25 && Player.area!=104&&Player.area!=8&&Player.area!=108&&Player.area!=122
		darkness = 1
		
	if Player.level > 14 - (max(-1,Player.maxarmour-1))
	{
		alarm[1] = 1;
		skillscrollmax = Player.level - floor(min(Player.level,40)/10);
	}
}
if darkness = 1
{dark = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
surface_set_target(dark)
draw_clear(c_white)
surface_reset_target()}

gameovertime = 0
wave = 0
fogscroll = 0

gameoverText = "YOU DID NOT REACH THE NUCLEAR THRONE";