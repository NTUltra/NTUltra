if(image_xscale<0.7)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,7)
resetSpeed=false;
friction=0;}

if speed>maxSpeed
speed=maxSpeed;



if(image_xscale<1)
{
image_xscale+=0.1;
image_yscale+=0.1;
}
else
{
image_xscale=1;
image_yscale=1;
}
if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,false,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,false,true)) ){
instance_destroy();
}

with instance_create(x+random(8)-4,y+random(16)-8,PlasmaFX)
{
sprite_index=sprPopoPlasmaTrail;
motion_add(other.direction+random(30)-15,random(2))
}

