dir=random(360);
lp = clamp((alarm[0]-1)/maxTime,0,1)
if instance_exists(creator)
{
x = creator.x
y = creator.y
}
if lp > 0
with instance_create(x+lengthdir_x(2+random(8),other.dir),y+lengthdir_y(2+random(8),other.dir),PlasmaFX)
{
motion_add(other.dir+180,2+random(4))
}

