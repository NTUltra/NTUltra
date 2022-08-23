scrDrop(6,0)

event_inherited()

dir = random(360)
repeat(5)
{
with instance_create(x,y,Dust)
{
motion_add(other.dir,1+random(5))
image_angle = direction
}
dir += 120+random(140);
}

