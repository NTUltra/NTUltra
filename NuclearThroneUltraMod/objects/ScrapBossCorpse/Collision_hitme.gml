if mySize >= other.mySize-1 and speed > 2 and other.sprite_index != other.spr_hurt
{
with other
{
my_health -= round(1+other.speed/5)
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,other.speed/2)
}
Sleep(2*mySize*mySize)
speed /= 2
}

