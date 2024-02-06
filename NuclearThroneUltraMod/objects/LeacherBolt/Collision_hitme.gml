
if other.team != team
{
	snd_play(sndGrenadeStickWall)

	var ang = point_direction(x,y,other.x,other.y);
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
	    DealDamage(other.dmg)
	    sprite_index = spr_hurt
	    image_index = 0
	    motion_add(other.direction,3)
		var xx = other.x;
		var yy = other.y;
		var dir = point_direction(xx,yy,x,y);
		while (!collision_point(xx,yy,id,true,false))
		{
			xx+=lengthdir_x(1,dir);
			yy+=lengthdir_y(1,dir);
		}
		with instance_create(xx,yy,Leach)
		{
			xOffset = x - other.x;
			yOffset = y - other.y;
			owner=other.id;
			image_angle = ang;
			depth = other.depth - 1;
		}
	}
	speed = 0
	instance_destroy();
}