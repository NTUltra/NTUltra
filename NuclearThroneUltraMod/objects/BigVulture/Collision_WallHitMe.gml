/// @description Go through a wall
if alarm[4] > 0 || alarm[7] > 0
{
	with other
	{
		instance_destroy()
		instance_create(x,y,FloorExplo)
	}
}
else
{
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