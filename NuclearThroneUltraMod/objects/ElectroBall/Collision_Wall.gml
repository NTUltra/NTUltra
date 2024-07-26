if bounce < 1
{
	instance_destroy()
	instance_create(x,y,Dust);
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
}
else
{
	move_bounce_solid(false);
	move_outside_solid(direction,8);
	image_angle = direction;
	bounce -= 1;
}