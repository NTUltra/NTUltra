//instance_destroy()
//instance_create(x,y,Dust)
move_bounce_solid(false);
//if !sound_isplaying(sndBouncerHitWall)
//snd_play(sndBouncerHitWall)
snd_play(sndBouncerHitWall,0.1,true,true,1,false,true,0.75);

hitWall+=1;
if hitWall>1{
instance_destroy();
instance_create(x,y,Dust);}

