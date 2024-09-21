/// @description Slide along wall or break em
if alarm[4] > 0
{
	if alarm[4] > 5
		alarm[4] -= 1;
	if hspeed!=0
	{
	    if !place_free(x+hspeed,y)
	    {
	        if hspeed>0 {move_contact_solid(0,hspeed);}
	        if hspeed<0 {move_contact_solid(180,-hspeed);}  
        
	        hspeed=0;
	    }
	}
	if vspeed!=0
	{
	    if !place_free(x+hspeed,y+vspeed)
	    {
	        if vspeed>0 {move_contact_solid(270,vspeed);}
	        if vspeed<0 {move_contact_solid(90,-vspeed);}  
        
	        vspeed=0;
	    }
	}
}