visible=true;
x=xstart;
y=ystart;
scrForcePosition60fps();
image_index=0;
sprite_index=spr_appear;
image_speed=0.4;
with DragonShield
	event_user(0);
//appearing=0;
alarm[6]=30
alarm[1]=300;
snd_play(sndDragonLoop);
snd_play(sndDragonStart);

