//repeat(2)
repeat(2)
with instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
motion_add(random(360),random(1));


snd_play(UberCont.snd_wallbreak,0.1)
BackCont.shake += 2;
instance_create(x,y,Smoke);

with myWall
instance_destroy();

instance_create(x,y,ElementorWallDisappear);