/// @description Collision Wall
if collision_line_width(xprev,yprev,x,y,Wall,false,false,1)
{
	instance_destroy()
	instance_create(xprev,yprev,Dust)
	snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
}
xprev = x;
yprev = y;