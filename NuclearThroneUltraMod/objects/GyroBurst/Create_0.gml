event_inherited();
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
RecycleGlandType();

friction=0.1;
image_speed=0.4;

alarm[0]=240;

ang=random(360);

reload=10;

timeinwall=0;

proj = Bullet1;
pSpeed = 16;
instance_create(x,y,SmallWallBreak);