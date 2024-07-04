/// @description More portals
BackCont.shake += 50;
with CrackScreen
{
	snd_play_2d(sndBreakIce);
	snd_play_2d(sndUnlockCharacterLight);
	crackTime -= 60;
}
__background_set_colour( make_color_rgb(67,53,35) )
with instance_create(x,y,PortalEnviromentReplacer)
{
	area = other.rememberArea;
	prevArea = 116;
}
alarm[9] = 60;