/// @description FX
with instance_create(x,y,GhostEffect)
{
	motion_add(random(360),1 + random(2));
}
alarm[4] = 3 + irandom(2);