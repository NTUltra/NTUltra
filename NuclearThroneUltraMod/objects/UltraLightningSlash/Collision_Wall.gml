x -= hspeed * wallPierce
y -= vspeed * wallPierce

if walled = 0
{
walled = 1
snd_play(sndMeleeWall,0.1)
}
Sleep(5)
with other
{
	instance_destroy()
	instance_create(x,y,FloorExplo)
}

