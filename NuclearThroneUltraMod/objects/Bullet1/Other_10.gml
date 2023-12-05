/// @description Wall hit
instance_destroy()
instance_create(xprev,yprev,Dust)
snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);