if other.team != team
{
instance_destroy()

with other
{
DealDamage(4)
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,10)
}
}

