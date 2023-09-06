image_speed = 0
alarm[0] = 1;
image_xscale=choose(1,-1);

depth = -abs(y);

if place_meeting(x,y,prop)
instance_destroy();

if place_meeting(x,y,Floor)
instance_destroy();

if place_meeting(x,y,enemy)
instance_destroy();

alarm[2] = 30;