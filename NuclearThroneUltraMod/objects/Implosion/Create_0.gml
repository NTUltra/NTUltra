event_inherited();
friction = 0.09;
kraken=false;
image_speed = 0.4

if Player.skill_got[17] = 1{
dmg=3+(Player.betterlaserbrain);}
else{
dmg=2;}//contact damage

typ = 1 
alarm[0]=30;//Before storm start
snd_loop(sndPortalLoop)

duration = 1;
time = 3;