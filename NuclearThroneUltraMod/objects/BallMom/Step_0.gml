event_inherited()

if sprite_index != spr_hurt && sprite_index != spr_fire
motion_add(direction,theSpeed)


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if instance_exists(GenCont) || instance_exists(Spiral)
	speed = 0;
else
	speed = maxSpeed;

if instance_exists(Player)
{
	var dis = point_distance(x,y,Player.x,Player.y)
	if close = 0 and dis < 64
	{
		close = 1
		snd_play(sndFrogClose)
	}
	else if !active && dis < 200
	{
		instance_create(x,y,DramaCamera);
		snd_play_2d(sndBallMamaAppear);
		active = true;
		snd_loop(sndBallMamaLoop);
	}
}
else if sndtaunt = 0
{
tauntdelay += 1
if tauntdelay > 50
{
snd_play_2d(sndBallMamaTaunt);
sndtaunt = 1
}
}
