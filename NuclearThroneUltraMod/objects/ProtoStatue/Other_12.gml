/// @description Draw Lights
if rad > 0
{
	draw_sprite_ext(sprPStatLights,lerp(0,sprite_get_number(sprPStatLights)-1,clamp(rad/radRequired,0,1)),x - vxO,y - vyO,lightScale,lightScale,image_angle,c_white,1);
	if rad >= radRequired
	{
		draw_sprite_ext(sprPStatLightsCharged,lightAnimation,x - vxO,y - vyO,lightScale,lightScale,image_angle,c_white,1);
		if UberCont.normalGameSpeed == 60
		{
			lightAnimation += 0.1;
		}
		else
		{
			lightAnimation += 0.2;
		}
		if lightAnimation > sprite_get_number(sprPStatLightsCharged)
			lightAnimation = 0;
	}
}