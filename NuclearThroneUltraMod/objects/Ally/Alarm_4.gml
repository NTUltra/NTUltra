/// @description Throwing bro
speed *= 0.5;
BackCont.shake += 2;
repeat(4)
{
	with instance_create(x,y,Dust)
	{
		speed += 2;
	}
}