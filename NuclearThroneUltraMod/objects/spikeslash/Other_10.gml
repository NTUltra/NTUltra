/// @description Splinters on hit
var hitGuy = hitEntities[array_length(hitEntities)-1];
with hitGuy
{
	snd_play(sndSplinterMinigun,0.05,true,false,2,false,false,0.7);
	var am = 6;
	var ang = other.image_angle;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,Splinter)//5 splinters
		{
			motion_add(ang,20+random(4))
			image_angle = direction
			team = 2;
			alarm[2] = 2;
		}
		ang += angStep;
	}
}