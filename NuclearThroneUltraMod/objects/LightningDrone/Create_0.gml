event_inherited();
typ = 2 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
RecycleGlandType();

friction = 0;
image_speed=0.4;

alarm[0] = 90;
proj = Bullet1;
pSpeed = 16;
actTime = 8;
alarm[1] = actTime * 2;
walk = actTime;
theColour = make_colour_rgb(160,196,229);//make_colour_rgb(109,182,248);
alarm[2] = 1;
xprev = x;
yprev = y;
right = 1;