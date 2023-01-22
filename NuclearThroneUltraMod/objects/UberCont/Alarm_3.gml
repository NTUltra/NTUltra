/// @description Update surfaces to new screensize
debug("UPDATE SCREENSIZE");
with TopCont
{
	if surface_exists(dark)
		surface_resize(dark,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
}
with BackCont
{
	if surface_exists(shad)
		surface_resize(shad,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
}