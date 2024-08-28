//event_inherited();
//typ = 0 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
depth = 1;
alarm[0] = 15
team=2;

if random(5)<1
fire=true
else
fire=false;

minSpeed = 0.8;
maxSpeed = random_range(minSpeed,3.5);
instance_create(x,y,WallBreakWallOnly);