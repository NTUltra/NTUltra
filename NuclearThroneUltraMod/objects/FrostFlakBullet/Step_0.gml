if random(3) < 1
{
with instance_create(x,y,Smoke)
motion_add(random(360),random(2))
}

if speed = 0
instance_destroy()

image_speed = speed/12

if collision_line_width(xprev,yprev,x,y,Wall,false,false,1)
{
	event_user(0);
}
xprev = x;
yprev = y;