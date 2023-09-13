event_inherited()

if instance_exists(Player) && existTime > 60
{
if point_distance(x,y,Player.x,Player.y) < 96
{
snd_play(snd_melee)
instance_destroy()
}
}


