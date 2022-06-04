if instance_exists(Player)
{
if wep == 0 && point_distance(x,y,Player.x,Player.y) > 32
{
sprite_index = sprProtoChest
wep = other.wep
wepmod1 = other.wepmod1
wepmod2 = other.wepmod2
wepmod3 = other.wepmod3
wepmod4 = other.wepmod4
with other
instance_destroy()
}
}

