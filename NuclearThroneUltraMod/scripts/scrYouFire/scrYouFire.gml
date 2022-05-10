function scrYouFire() {
	    //save current mouse position
	var len,dir;
	//if UberCont.opt_fulscrn=1
	//len=point_distance(Player.x,Player.y,target.x,target.y)*4
	//else{
	len=point_distance(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y)
	len*=(window_get_height())*0.005;
	//}

	dir=point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y);

	oldmox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
	oldmoy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);

	if oldmox > window_get_x()+window_get_width()
	oldmox = window_get_x()+window_get_width()-8;
	if oldmox < window_get_x()
	oldmox = window_get_x()+8;
	if oldmoy > window_get_y()+window_get_height()
	oldmoy = window_get_y()+window_get_height()-8;
	if oldmoy < window_get_y()
	oldmoy = window_get_y()+8;

        
	    //set the mouse in the middle
	    var newmox=window_get_x()+window_get_width()*0.5;
	    var newmoy=window_get_y()+window_get_height()*0.5;
    
    
    
	    display_mouse_set(newmox,newmoy);
    
	    //we have to wait before we can fire because the mouse will be set next step
	    if alarm[6]<1
	    alarm[6]=2;
	    //scrFire()
    
    



}
