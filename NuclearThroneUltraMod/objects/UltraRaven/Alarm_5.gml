/// @description Can perch
alarm[1] = 0;
var d = random(360);
alarm[6] = 60 + irandom(60);
while place_meeting(x,y,Floor) || place_meeting(x,y,Wall)
|| place_meeting(x,y,Top) || place_meeting(x,y,TopSmall)
|| place_meeting(x,y,hitme)
{
	x += lengthdir_x(6,d);
	y += lengthdir_y(6,d);
}

scrForcePosition60fps();