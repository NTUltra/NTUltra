/// @description Also count deflects as a hit
if team != other.team
{
	if (other.typ == 1 || other.typ == 2)
	{
		hitEnemy = true;
		with BloodSlashRetail
			hitEnemy = true;
	}
	else if destroyAll
	{
		if typ == 0 && !canBeMoved
		{
			var d = point_distance(xstart,ystart,other.x,other.y) - 1;
			x = xstart + lengthdir_x(d,image_angle);
			y = ystart + lengthdir_y(d,image_angle);
			image_xscale = point_distance(x,y,xstart,ystart)*0.5
			hitEnemy = true;
			with BloodSlashRetail
				hitEnemy = true;
		}
		else
		{
			hitEnemy = true;
			with BloodSlashRetail
				hitEnemy = true;
			instance_destroy();	
		}
	}
}
// Inherit the parent event
event_inherited();

