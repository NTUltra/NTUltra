/// @description Shake
if shake > 0.01
{
	x += lengthdir_x(shake,random(360));
	y += lengthdir_y(shake,random(360));

	shake *= 0.95;
	shake -= 0.1;
} else {
	shake = 0;	
}
alarm[6] = 1;