/// @description Frost
if friction > 0.15
{
with instance_create(x,y,IceFlame)
{motion_add(other.direction+random(20)-10,1+random(2))
team = other.team}
}
alarm[2] = 1;
