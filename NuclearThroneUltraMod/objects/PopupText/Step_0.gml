/// @description Collision & move
if y - 30 > camera_get_view_y(view_camera[0])
{
	var sw = string_width(string_hash_to_newline(string(mytext))) * 0.5;
	var sh = string_height(string_hash_to_newline(string(mytext))) * 0.5;
	var o = collision_rectangle(x - sw,y - sh, x + sw, y + sh,PopupText,false,false)
	if o != noone && id < o.id
	{
		if UberCont.normalGameSpeed == 60
			y -= moveSpeed * 0.5
		else
			y -= moveSpeed
		with o
		{
			if UberCont.normalGameSpeed == 60
				y += moveSpeed * 0.5
			else
				y += moveSpeed
		}
	}
}
y = max(y,camera_get_view_y(view_camera[0]));