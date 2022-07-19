/// @description Go time
visible = true;
alarm[0] = 1;
alarm[2] = 2;
image_speed = 0.8;
instance_create(x,y,WallBreak)
instance_create(x+16,y+16,WallBreak)
instance_create(x-16,y-16,WallBreak)

instance_create(x-16,y+16,WallBreak)
instance_create(x+16,y-16,WallBreak)