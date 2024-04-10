Sleep(50)
repeat(4)
instance_create(x+random(20)-10,y+random(20)-10,PurpleExplosion)
snd_play(sndExplosionL)


instance_create(x+32,y+32,WallBreak);
instance_create(x+32,y-32,WallBreak);
instance_create(x-32,y+32,WallBreak);
instance_create(x-32,y-32,WallBreak);

repeat(20)
{
with instance_create(x,y,Smoke)
{motion_add(random(360),1+random(4))
image_speed=0.3+random(0.2);}
}

