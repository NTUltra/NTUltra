/// @description Some effects 

// Inherit the parent event
event_inherited();

var xx = xprevious;
var yy = yprevious;
var repeats = (point_distance(xx,yy,x,y)/8) - 2;
var i = 0;
repeat(repeats)
{
	xx += lengthdir_x(8,direction);
	yy += lengthdir_y(8,direction);
	if i % 2 == 0 || i == repeats
	{
		with instance_create_depth(xx + random_range(8,-8),yy + random_range(8,-8),depth - 1,PlasmaFX)
		{
			motion_add(other.direction,1);
		}
	}
	else
	{
		with instance_create_depth(xx,yy,depth - 1,AnimDestroy) {
			sprite_index = other.railFx;
			image_xscale = other.hitScale;
			image_yscale = image_xscale;
			image_angle = other.direction;
			image_xscale = random_range(2,32);
			motion_add(other.direction,2);
		}
	}
	i ++;
}
with instance_create_depth(x,y,depth - 1,AnimDestroy)
{
	sprite_index = other.railHit;
	image_angle = other.direction;
}
BackCont.shake += 20;
with Player
{
	if !skill_got[2]
	{
		scrMoveContactSolid(other.direction + 180,5);
		motion_add(other.direction + 180, 6);
	}	
}
repeat(2)
	instance_create(x,y,Smoke);
snd_play(sndExplosionS);