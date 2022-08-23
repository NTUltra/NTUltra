/// @description xxx
var am = 3 * ring;
if rings - ring < 1
{
	//Incomplete rings
	am = 3 * rings;
}
var dirStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(dis,randir),y+lengthdir_y(dis,randir),RogueExplosion)
	{team=2;
		with myExplosionMask
			instance_destroy(id,false)
		dmg += other.dmg}
	randir += dirStep
}
randir += dirStep * 0.5;
dis += disPlus;
ring ++;
rings --;
if rings > 0
	alarm[0] = 1;