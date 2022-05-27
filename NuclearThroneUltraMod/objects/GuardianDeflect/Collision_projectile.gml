if team != other.team && other.alarm[11] < 1
{

if other.typ =1
{
other.team = team
other.direction = point_direction(other.x,other.y,other.xstart,other.ystart)
other.image_angle = other.direction
other.speed = max(1,other.speed*0.5);
}
if other.typ = 2
{
with other
instance_destroy()
}

}

