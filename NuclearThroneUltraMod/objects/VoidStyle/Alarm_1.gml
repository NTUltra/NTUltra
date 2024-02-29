/// @description Shake
BackCont.shake += 1;
if image_index < image_number - endEarly
	alarm[1] = 1;
existTime += 1;
var ang = 0;
var angStep = 45;
var minDis = 80;
for (var i = 0; i < 8; i ++)
{
	var xx = x;
	var yy = y;
	var dis = minDis;
	var step = 16;
	for (var j = 0; j < 4; j ++)
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
		step += 1;
	}
	ang += angStep;
}