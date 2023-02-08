event_inherited();
if friction > 0.15
{
with instance_create(x,y,Flame)
{
sprite_index=sprFireLilHunter;
motion_add(other.direction+random(20)-10,random(1))
team = other.team}
}

image_angle+=5;

