///scrHunterCrackshot();
// /@description Hunters ultra D
///@param
function scrHunterCrackshot(){
	if ultra_got[44] == 1 && instance_exists(Marker)
	{ 
		/*
			when one of the target dies, a marker gets removed and we place a new one with index 1
			but the old markers dont get a different number
		*/
		crackshotsfired = instance_number(Marker);//+1;
		ogmx = UberCont.mouse__x;
		ogmy = UberCont.mouse__y;
		var ox = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5);
		var oy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.5);
		with Marker
		{
			if MarkerNr=other.crackshotsfired
			{
				var mox,moy;
				var len,dir;
				if UberCont.opt_fulscrn=1
				{
					len=point_distance(ox,oy,target.x,target.y)*4
				}
				else
				{
					len=point_distance(ox,oy,target.x,target.y)
					len*=(window_get_height())*0.004;
				}
            
				dir=point_direction(ox,oy,target.x,target.y);
            
				mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
				moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);
            
				if mox > window_get_x()+window_get_width()
					mox = window_get_x()+window_get_width()-8;
				if mox < window_get_x()
					mox = window_get_x()+8;
				if moy > window_get_y()+window_get_height()
					moy = window_get_y()+window_get_height()-8;
				if moy < window_get_y()
					moy = window_get_y()+8;
            
				display_mouse_set(mox,moy);
			}
		}
		alarm[11]=1;
    
		if instance_number(Marker) > 0
			reload*=(instance_number(Marker)*0.3);
	}
    else
	{
		return false;	
	}
	return true;
}