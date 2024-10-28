instance_create(x,y,Dust)
instance_create(x,y,WallBreakWallOnly)
move_bounce_solid(false);
if !shotgunShoulders
{
	speed -= 0.4;
	speed *= 0.95;
}
else
{
	speed += 1;	
}
//if !sound_isplaying(sndHitWall)
//snd_play(sndHitWall)

