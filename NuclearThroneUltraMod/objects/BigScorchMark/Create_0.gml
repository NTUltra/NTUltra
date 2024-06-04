image_speed=0;
image_index=choose(0,1);
image_angle = random(360);
// Do the corners have collision
if !collision_point(x - 14,y - 14,Floor,false,false) ||
!collision_point(x + 14,y - 14,Floor,false,false) ||
!collision_point(x - 14,y + 14,Floor,false,false) ||
!collision_point(x + 14,y + 14,Floor,false,false)
	instance_destroy()
else if place_meeting(x,y,FloorLava)
	instance_destroy();
depth = 4;
popo=false;
alarm[0] = 1;
alarm[1] = 1;