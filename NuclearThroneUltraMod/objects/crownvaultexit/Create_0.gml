/// @description Init
depth = 8
image_speed = 0.4;
alarm[0] = 10;
//instance_create(x,y,BigWallBreak);
y += 32;
x -= 16;
y -= 16;
instance_create(x,y,Floor);
instance_create(x-32,y,Floor);
instance_create(x+32,y,Floor);
instance_create(x,y+32,Floor);
instance_create(x,y-32,Floor);

instance_create(x-32,y+32,Floor);
instance_create(x-32,y-32,Floor);
instance_create(x+32,y+32,Floor);
instance_create(x+32,y-32,Floor);
x += 16;
y += 16;
name = "EXIT";