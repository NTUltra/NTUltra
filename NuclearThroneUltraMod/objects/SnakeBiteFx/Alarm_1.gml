/// @description Disappear Time increase
disappearTime += 0.2;
BackCont.shake += 1;
time -= 0.1;
if disappearTime >= 1
{
	instance_destroy();	
}
else
{
	alarm[1] = 1;
}