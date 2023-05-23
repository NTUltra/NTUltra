active = 1
BackCont.shake += 3

repeat(5)
with instance_create(x,y,Smoke)
	depth = other.depth + 1;

