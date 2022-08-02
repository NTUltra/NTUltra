/*instance_destroy()
instance_create(x,y,Dust)
if !sound_isplaying(sndHitWall)
snd_play(sndHitWall)
*/

friction=0.4;

var olddir, oldspeed;
olddir = direction
oldspeed = speed

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

image_xscale-=0.15;
image_yscale-=0.15;

instance_create(x,y,Dust)



resetSpeed=true;

/* */
/*  */
