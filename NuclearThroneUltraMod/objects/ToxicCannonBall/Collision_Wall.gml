if alarm[5] < 1
{
	instance_create(x,y,Smoke)
	instance_create(x,y,WallBreak)
	alarm[5] = 5;
	speed = 0;
}
//if !sound_isplaying(sndHitWall)
//snd_play(sndHitWall)

