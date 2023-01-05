///scrDrawSecretFinder();
// /@description
///@param
function scrDrawSecretFinder(){
	var xx = x;
	var yy = y;
	var vx = camera_get_view_x(view_camera[0]);
	var vw = camera_get_view_width(view_camera[0]);
	var shouldDraw = false;
	if xx >  vx + vw
	{
		xx = vx + vw-5;
		shouldDraw = true;
	}
	else if xx < vx
	{
		xx = vx+5;
		shouldDraw = true;
	}
	var vy = camera_get_view_y(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	if yy >  vy + vh
	{
		yy = vy + vh-5;
		shouldDraw = true;
	}
	else if yy < vy
	{
		yy = vy+5;
		shouldDraw = true;
	}
	if shouldDraw
	{
		draw_sprite_ext(sprSecretIndicator,0,xx,yy,1,1,0,c_white,SecretFinder.alpha);
	}
}