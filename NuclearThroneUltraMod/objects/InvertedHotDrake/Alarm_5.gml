visible=true;
x=xstart;
y=ystart;
image_index=0;
sprite_index=spr_appear;
with DragonShield
	event_user(0);
image_speed=0.4;
//appearing=0;
alarm[6]=30
alarm[1]=300;
snd_play(sndDragonLoop);
snd_play(sndDragonStart);

