/// @description INIT
alarm[0] = 110;
alarm[1] = 5;
alarm[2] = 2;
alarm[3] = 17;
mySound = snd_play(sndBlobTrail,
0,false,true,2,false,false,0.8,true,id,0.8);
totalRadsCollected = 0;
with instance_create(x,y,DarkOverlay)
{
	alarm[0] = other.alarm[0]	
}
BackCont.shake += 30;
Sleep(20);
snd_play_2d(sndPlagueBringer);
alarm[4] = 30;
alarm[5] = 60;
loops = GetPlayerLoops();
dmg = loops * 0.5;
dmgAdd = loops * 0.3;