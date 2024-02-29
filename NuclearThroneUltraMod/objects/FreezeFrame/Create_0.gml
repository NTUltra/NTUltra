/// @description Create an image to copy
pauseimg = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0,0,0);
resolutionScale = UberCont.opt_resolution_scale;
sideArt = UberCont.opt_sideart;
customSideArt = UberCont.customSideArt;
if surface_exists(GameRender.hudSurface)
{
	hudimg = sprite_create_from_surface(GameRender.hudSurface,0,0,surface_get_width(GameRender.hudSurface),surface_get_height(GameRender.hudSurface),0,0,0,0);
}
else
{
	hudimg = mskPickupThroughWall;	
}
with BackCont
{
	if surface_exists(shad)
		surface_free(shad);
}