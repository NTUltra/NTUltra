repeat(20)
instance_create(x+lengthdir_x(10+irandom(24),random(360))+random(6)-3,
y+lengthdir_y(10+irandom(24),random(360))+random(6)-3,Curse)

repeat(6+irandom(6))
{
	with instance_create(x+lengthdir_x(10+irandom(24),random(360))+random(6)-3,y+lengthdir_y(10+irandom(24),random(360))+random(6)-3,GhostEffect)
		motion_add(random(360),0.5+random(4))
}
image_speed=0;
alarm[0]=10;
