/// @description Hit a wall
if bounce < 1
{
	instance_destroy()
	instance_create(x,y,Dust);
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
}
else
	snd_play(sndEnergyPelletBounce,0.1);
bounce -= 1;