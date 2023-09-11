if alarm[2] < 1
{
	if alarm[11] < 1
	{
		scrBoltMarrow();
		instance_create(x,y,particle);
	}
	if collision_line(x,y,x+hspeed,y+hspeed,Wall,false,false)
	{
		if bounce > 0
		{
			var hs = sign(hspeed);
			var vs = sign(vspeed);
			var hc = false;
			var vc = false;
			repeat(1+abs(hspeed))
			{
				if !hc && !collision_point(x+hs,y,Wall,false,false)
					x += hs;
				else
					hc = true;
			}
			repeat(1+abs(vspeed))
			{
				if !vc && !collision_point(x,y+vs,Wall,false,false)
					y += vs;
				else
					vc = true;	
			}
			if hc
				hspeed *= -1;
			if vc
				vspeed *= -1;
			image_angle = direction;
			x += lengthdir_x(1,direction);
			y += lengthdir_y(1,direction);
			var maxStep = 32;
			var i = 0;
			while collision_point(x,y,Wall,false,false) && i < maxStep
			{
				x += lengthdir_x(1,direction);
				y += lengthdir_y(1,direction);
				i++;
			}
			bounce --;
			snd_play(sndShotgunHitWall,0.1,true);
		}
		else
		{
			var maxStep = 32;
			var i = 0;
			while !collision_point(x,y,Wall,false,false) && i < maxStep
			{
				x += lengthdir_x(1,direction);
				y += lengthdir_y(1,direction);
				i++;
			}
			snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
			alarm[3] = 2;
			alarm[2] = 10+random(20);//delay before destroying
			speed = 0
		}
	}
		
	var dir = point_direction(cx,cy,x,y);
	var xx = cx;
	var yy = cy;
	var dis = point_distance(cx,cy,x,y);
	var am = dis/16;
	if alarm[2] > 0
		am = ceil(am);
	repeat(am)
	{
		xx += lengthdir_x(16,dir);
		yy += lengthdir_y(16,dir);
		with instance_create(xx,yy,chainType)
		{
			team = other.team;
			direction = dir;
			image_angle = direction;
		}
		cx = xx;
		cy = yy;
	}
}