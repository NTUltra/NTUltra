//instance_destroy()
//instance_create(x,y,Dust)
move_bounce_solid(false);
//if !sound_isplaying(sndBouncerHitWall)
//snd_play(sndBouncerHitWall)
snd_play(sndBouncerHitWall,0.1,true,true,1,false,true,0.75);

hitWall+=1;
speed *= 0.95;
if hitWall>2{
instance_destroy();
instance_create(x,y,Dust);}

