if alarm[2] > 0
{
	var ys = 1;
	var t = camera_get_view_y(view_camera[0]);
	var dis = endy - t;
		ys = lerp(0,dis,
			alarm[2]/5
		);
	draw_sprite_ext(sprLaser,-1,endx,endy,ys*0.5,scale,270,c_white,1)
	draw_sprite_ext(sprIonEnd,-1,endx,endy-ys,1,scale,90,c_white,1)
	draw_sprite_ext(sprIonEnd,-1,endx,endy,scale,scale,270,c_white,1)
}
else if lp <= 0.2
{
	var yy = y;
	if instance_exists(creator)
	{
		var t = camera_get_view_y(view_camera[0]);
		yy = lerp(UberCont.mouse__y,t,
			lp/0.2
		);
	}
	draw_sprite_ext(sprLaser,-1,UberCont.mouse__x,yy,1000,scale,270,c_white,1)
	draw_sprite_ext(sprIonEnd,-1,UberCont.mouse__x,yy,scale,scale,270,c_white,1)
}
else
{
	var yy = y;
	if instance_exists(creator)
	{
		var t = camera_get_view_y(view_camera[0])-64;
		yy = lerp(t,y,
			lp
		);
	}
	draw_sprite_ext(sprLaser,-1,x,yy,1000,scale,270,c_white,1)
	draw_sprite_ext(sprIonEnd,-1,x,yy,scale,scale,270,c_white,1)
	if lp > 0.9
		draw_self();
}