/// @description Aim overwrite

///CAPTURE DA MOUSE AIRHORN.WAV
if isPaused = 0 and opt_mousecp = 1 and window_has_focus() && !instance_exists(Menu) && !instance_exists(GenCont) && !instance_exists(LevCont)&& !instance_exists(Vlambeer)//and (UberCont.mouse__x < view_xview or UberCont.mouse__y < view_yview or UberCont.mouse__x > view_xview+view_wview or UberCont.mouse__y > view_yview+view_hview)
{

var mox = window_mouse_get_x();
var moy = window_mouse_get_y();
var o = 20;
mox = clamp(window_mouse_get_x(),
o,
window_get_width() - o);
moy = clamp(window_mouse_get_y(), 
o,
window_get_height() - o);

window_mouse_set(mox,moy);

}

if instance_exists(Marker)
{
	mouse__x = Marker.x;
	mouse__y = Marker.y;
}
else
{
	mouse__x = mouse_x;
	mouse__y = mouse_y;
}