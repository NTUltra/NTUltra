scrDrop(droprate,0)

event_inherited()

if fuseAmount > 0
{
	snd_play(sndFreakFuseRevive,0.2);
	repeat(fuseAmount)
	{
		with instance_create(x,y,Freak) {
			droprate = 3;
			raddrop = 0;
			raddrop = 0;
			existTime = 30;
			wasResurrected = true;
			countKill = false;
			alarm[1] = 5;
			direction = random(360);
			speed = 2;
			walk += 2;
		}
	}	
}