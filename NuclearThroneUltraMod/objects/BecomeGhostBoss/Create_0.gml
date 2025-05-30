/// @description Spawn a ghost boss
image_speed = 0.4;
snd_play_2d(sndIncomingGhostBoss);
BackCont.shake += 10;
alarm[2] = 3;
ammo = 4 + min(20,GetPlayerLoops() * 2);