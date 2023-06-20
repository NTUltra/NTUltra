motion_add(point_direction(other.x,other.y,x,y),0.5)

if other.team != team and other.my_health > 0 and mySize > other.mySize and meleedamage > 0
{
with other
{
my_health -= other.meleedamage
sprite_index = spr_hurt
image_index = 0
}
}

