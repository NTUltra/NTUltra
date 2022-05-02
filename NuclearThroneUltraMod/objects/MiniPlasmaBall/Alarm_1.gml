/// @description particles
alarm[1] = ptime;
with instance_create(x+random(4)-2,y+random(8)-4,PlasmaFX)
{
motion_add(other.direction+random(30)-15,random(2))
image_xscale-=0.1;
image_yscale-=0.1;
}

