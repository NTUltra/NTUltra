//if object_index!=ChesireCat{//not sure if it is oke to run this in every enemy

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
