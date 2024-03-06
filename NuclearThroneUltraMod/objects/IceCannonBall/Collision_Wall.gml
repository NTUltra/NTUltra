instance_create(x,y,Dust)
instance_create(x,y,WallBreakWallOnly)
move_bounce_solid(false);
if !shotgunShoulders
{
	speed -= 0.5;
	speed *= 0.9;
}
else
{
	speed += 1;	
}
//if !sound_isplaying(sndHitWall)
//snd_play(sndHitWall)

