/// @description Hold the camera
camera_set_view_pos(view_camera[0],round(x - (camera_get_view_width(view_camera[0])*0.5)),round(lerp(bottomY,topY,cameraTime)));