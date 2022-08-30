scrDrop(20,2)

event_inherited()


dir = random(360)
repeat(3)
{
with instance_create(x,y,AcidStreak)
{
motion_add(other.dir,8)
image_angle = direction
}
dir += 120
}

dir = random(360)
repeat(10)
{
with instance_create(x,y,Dust)
{
motion_add(other.dir,1+random(5))
image_angle = direction
}
dir += 120+random(140);
}

