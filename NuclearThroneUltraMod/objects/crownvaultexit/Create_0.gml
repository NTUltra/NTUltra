/// @description Init
depth = 8
image_speed = 0.4;
alarm[0] = 10;
x = 16 * (x div 16);
y = 16 * (y div 16);
x -= 16;
y += 16;
instance_create(x,y,Floor);
instance_create(x-32,y,Floor);
instance_create(x+32,y,Floor);
instance_create(x-64,y,Floor);
instance_create(x+64,y,Floor);
instance_create(x,y+32,Floor);
instance_create(x,y-32,Floor);
instance_create(x,y+64,Floor);
instance_create(x,y-64,Floor);

instance_create(x-32,y+32,Floor);
instance_create(x-32,y-32,Floor);
instance_create(x+32,y+32,Floor);
instance_create(x+32,y-32,Floor);
x += 16;
y += 16;
name = "EXIT";
instance_create(x,y,TorchKiller);
event_perform(ev_alarm,2);
alarm[2] = 5;
alarm[6] = 5;
canUncurse = true;