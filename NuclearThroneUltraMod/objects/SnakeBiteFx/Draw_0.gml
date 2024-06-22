/// @description Draw a snake
var length = 32;
var minDis = 32;
var ang = image_angle;
var xx = x;
var yy = y;
var step = 2;
if instance_exists(target) && target != noone
{
	repeats = point_distance(x,y,target.x,target.y)/step;
	image_angle = point_direction(x,y,target.x,target.y);
}
var i = baseWave;
var wave = 0.2;
var maxWaveStrength = 32;
var waveMinus = 0.25;
var hscale = clamp(lerp(1,0,disappearTime),0,1) * flipped;
/*
	go in a straight line
	then draw dots around that line in a sine pattern (lengthdir?
	narrow the sign pattern as you get closer to lerp target bumber
	then connect the dots by angling and stretching sprite
*/
var px = xx + lengthdir_x(sin(i)*maxWaveStrength,image_angle + 90) - 1;
var py = yy + lengthdir_y(sin(i)*maxWaveStrength,image_angle + 90) - 1;
var totRepeats = round(repeats);
totRepeats = clamp(lerp(1,totRepeats + 1,time),1,totRepeats);
var strengthStep = 1/totRepeats;
var j = 0;
repeat(totRepeats)
{
	var waveStrength = lerp(0,maxWaveStrength,j) * lerp(1,0,j);//LERP FROM 0 to 1 to 0
	var xxs = xx + lengthdir_x(sin(i)*waveStrength,image_angle + 90);
	var yys = yy + lengthdir_y(sin(i)*waveStrength,image_angle + 90);
	ang = point_direction(px,py,xxs,yys);
	if j == 0
	{
		var wscale = 1;
	}
	else
	{
		var wscale = max(1,point_distance(px,py,xxs,yys)*0.5);
	}
	draw_sprite_ext(sprOutline,0,
	xxs + lengthdir_x(1,ang - 90),
	yys + lengthdir_y(1,ang - 90),
	wscale,hscale,ang,c_black,1)
	draw_sprite_ext(sprOutline,0,
	xxs + lengthdir_x(1,ang + 90),
	yys + lengthdir_y(1,ang + 90),
	wscale,hscale,ang,c_black,1)
	draw_sprite_ext(sprite_index,0,xxs,yys,wscale,hscale,ang,c_white,1);
	px = xxs;
	py = yys;
	xx += lengthdir_x(step,image_angle);
	yy += lengthdir_y(step,image_angle);
	i += wave;
	j += strengthStep;
}
var hhscale = hscale * 0.5;
draw_sprite_ext(sprSerpentStrikeHead,imageIndex,
	xxs + lengthdir_x(1,ang - 90),
	yys + lengthdir_y(1,ang - 90),
	1,hhscale,ang,c_black,1)
	draw_sprite_ext(sprSerpentStrikeHead,imageIndex,
	xxs + lengthdir_x(1,ang + 90),
	yys + lengthdir_y(1,ang + 90),
	1,hhscale,ang,c_black,1)
draw_sprite_ext(sprSerpentStrikeHead,imageIndex,xxs,yys,1,hhscale,ang,c_white,1);
if UberCont.normalGameSpeed == 60
	baseWave -= baseWaveStrength60;
else
	baseWave -= baseWaveStrength;