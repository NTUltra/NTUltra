var olddir, oldspeed;
olddir = direction
oldspeed = speed

motion_add(olddir,speed)
speed = oldspeed

if hspeed > 0 and !place_free(x+hspeed,y)
{do hspeed = max(hspeed-1,0) until place_free(x+hspeed,y) or hspeed <= 0}
else
if hspeed < 0 and !place_free(x+hspeed,y)
{do hspeed = min(hspeed+1,0) until place_free(x+hspeed,y) or hspeed >= 0}

if vspeed > 0 and !place_free(x,y+vspeed)
{do vspeed = max(vspeed-1,0) until place_free(x,y+vspeed) or vspeed <= 0}
else
if vspeed < 0 and !place_free(x,y+vspeed)
{do vspeed = min(vspeed+1,0) until place_free(x,y+vspeed) or vspeed >= 0}

image_xscale-=0.3;
image_yscale-=0.3;

instance_create(x,y,Dust)

speed = 1;