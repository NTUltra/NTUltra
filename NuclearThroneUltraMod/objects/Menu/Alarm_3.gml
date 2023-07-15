/// @description Camera
camLerp += 0.1;
if camLerp < 1
{
	camera_set_view_pos(view_camera[0],
	round(lerp(camX,camTargetX,camLerp)),
	round(lerp(camY,camTargetY,camLerp))
	);
	alarm[3] = 1;
}
else
	camLerp = 1