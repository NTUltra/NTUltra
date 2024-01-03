active = 1
BackCont.shake += 2
repeat(3)
with instance_create(x,y,Smoke)
	depth = other.depth + 1;
speed += 2;