event_inherited()

if sprite_index != spr_hurt
motion_add(direction,2)


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

speed = 3.4

if sleeping
	speed = 0;
if instance_exists(Player)
{
if close = 0 and point_distance(x,y,Player.x,Player.y) < 128
{
close = 1
snd_play(sndFrogClose)
}
}

