/// @description xxx
dir=random(360);
lp = clamp((alarm[0]-1)/maxTime,0,1)
if instance_exists(creator)
{
x = creator.x
y = creator.y
}
if lp > 0
with instance_create(x,y,FishBoost)
{
motion_add( random(360),2+random(4) );
}

image_angle += rotate;