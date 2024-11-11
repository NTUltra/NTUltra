/// @description Break wall
x -= hspeed * wallPierce
y -= vspeed * wallPierce

if walled = 0
{
	walled = 1
	snd_play(sndMeleeWall,0.1)
	snd_play(sndExplosionS);
}
with other
{
	if !place_meeting(x,y,FloorExplo)
	{
		instance_create(x+8,y+8,SmallExplosion);
	}
	instance_destroy()
	instance_create(x,y,FloorExplo)
}