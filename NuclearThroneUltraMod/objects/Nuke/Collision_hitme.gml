if other.team != team
{
instance_destroy()

with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,10)
}
}

