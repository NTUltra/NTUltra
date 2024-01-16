/// @description Draw cool
var dt = UberCont.normalGameSpeed == 60 ? 0.5 : 1;
if alarm[2] > 0
{
	scale += growRate*dt;
	image_angle += rotationSpeed*dt
}
else if alarm[4] > 0
{
	image_angle += rotationSpeed*0.5*dt
}
else if alarm[5] > 0
{
	scale -= growRate*dt;
	image_angle += rotationSpeed*dt
}
scale = clamp(scale,1,2);
image_xscale = scale;
image_yscale = scale;
draw_sprite_ext(sprite_index,image_index,x,y - ((scale-1) * 32),image_xscale,image_yscale,image_angle,c_white,1);