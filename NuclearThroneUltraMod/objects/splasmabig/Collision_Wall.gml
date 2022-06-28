var ogfriction = friction;
friction=0.4;

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
snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);


speed *= 0.75;
speed -= 1;
friction = ogfriction;
if( (collision_point(x+lengthdir_x(4,direction+20),y+lengthdir_y(4,direction+20),Wall,true,true))&&(collision_point(x+lengthdir_x(4,direction-20),y+lengthdir_y(4,direction-20),Wall,true,true)) )||(image_xscale<0.7)
{

    with other
    {
    instance_create(x,y,WallBreak);
    //instance_create(x,y,FloorExplo)
    //instance_destroy()
    }
}

