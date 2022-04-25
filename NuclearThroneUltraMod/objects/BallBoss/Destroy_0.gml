scrDrop(100,0)
snd_play(sndExplosionXXL);
instance_create(x,y,GreenExplosion);
var am = 4;
var angstep = 360/am;
var dir = random(360);
var l = 12;
repeat(am)
{
	var xx = x + lengthdir_x(l,dir);
	var yy = y + lengthdir_y(l,dir);
	instance_create(xx,yy,Explosion);
	dir += angstep;
}
with BallBossPlateau
{
	var xdir = 32;
	if other.anchorX > x
	{
		xdir = -32;
	}
	with instance_nearest(x,y-8,Floor) {
		var xx = x;
		var yy = y;
		repeat(12)
		{
			var walls = ds_list_create();
			var al = instance_place_list(x,y,Wall,walls,false)
			for (var j = 0; j < al; j++) {
				with walls[| j]
				{
					instance_destroy(id,false);
					instance_create(x,y,FloorExplo);
				}
			}
			ds_list_destroy(walls);
			if !place_meeting(xx,yy,Floor)
			{
				instance_create(xx,yy,Floor);
			}
			if !place_meeting(xx,yy+16,Floor)
			{
				instance_create(xx,yy+16,Floor);
			}
			xx += xdir;
		}
	}
}
event_inherited()

