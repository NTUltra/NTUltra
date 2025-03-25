/// @description Kill squares
if other.isGrenade && team != other.team
{
	snd_play(sndProjectileDestroy,0.1,true);
	BackCont.shake += 2;
	with other
		instance_destroy(id,false);
}
else if team != other.team
{
	if other.typ == 0 && !other.canBeMoved
	{
		with other
		{
			var d = point_distance(xstart,ystart,other.x,other.y) - 1;
			x = xstart + lengthdir_x(d,image_angle);
			y = ystart + lengthdir_y(d,image_angle);
			image_xscale = point_distance(x,y,xstart,ystart)*0.5;
		}
	}
	else// if (other.typ == 2 || other.typ == 3 || other.typ == 1)
	{
		snd_play(sndProjectileDestroy,0.1,true);
		BackCont.shake += 1;
		with other
			instance_destroy()
	}
}