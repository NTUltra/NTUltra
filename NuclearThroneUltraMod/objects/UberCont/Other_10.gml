/// @description Pause Image
if !instance_exists(TopCont) || TopCont.darkness == 0
{
	isPausedInTheDark = false;
	pauseimg = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0,0,0);
	pauseimgScale = 1/UberCont.opt_resolution_scale;
}
else
{
	isPausedInTheDark = true;
	pauseimg = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0,0,0);
	if instance_exists(TopCont) && surface_exists(TopCont.dark)
	{
		pauseDark = sprite_create_from_surface(TopCont.dark,0,0,surface_get_width(TopCont.dark),surface_get_height(TopCont.dark),0,0,0,0);
	}
	pauseimgScale = 1/UberCont.opt_resolution_scale;
	/*
	pauseimg = sprDarkness;
	pauseimgScale = 1;*/
}