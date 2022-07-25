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

/*
var olddir, oldspeed;
olddir = direction
oldspeed = speed
move_bounce_solid(true)

motion_add(olddir,speed)
speed = oldspeed

if hspeed > 0 and !place_free(x+hspeed,y)
{do hspeed -= friction until place_free(x+hspeed,y) or hspeed <= 0}
else
if hspeed < 0 and !place_free(x+hspeed,y)
{do hspeed += friction until place_free(x+hspeed,y) or hspeed >= 0}

if vspeed > 0 and !place_free(x,y+vspeed)
{do vspeed -= friction until place_free(x,y+vspeed) or vspeed <= 0}
else
if vspeed < 0 and !place_free(x,y+vspeed)
{do vspeed += friction until place_free(x,y+vspeed) or vspeed >= 0}
*/
//}

/* */
/*  */
