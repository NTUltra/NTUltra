/// @description Dust
alarm[1] = 4;
var ang = random(360);
var angStep = 60;
var minDis = 64 * scale;
for (var i = 0; i < 6; i ++)
{
	var xx = x;
	var yy = y;
	var dis = minDis;
	var step = 16;
	for (var j = 0; j < 2; j ++)
	{
		var myAng = ang+random_range(30,-30);
		var xx = x + lengthdir_x(dis,myAng);
		var yy = y + lengthdir_y(dis,myAng);
		if (collision_point(xx,yy,Floor,false,false))
			with instance_create(xx,yy,Dust)
			{
				depth = 7;
				motion_add(myAng + 180,	2 + random(3));
			}
		dis += step;
		step += 2;
	}
	ang += angStep;
}