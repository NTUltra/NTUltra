event_inherited();
friction = 0;
image_speed = 0.2;
alarm[0] = 10;
alarm[1] = 15
active = 0
typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable
ultramodded = true;
dmg = 90;
pierceDamage = 20;
xprev = x;
yprev = y;
alarm[2] = 2;
maxSpeed = 11;
acc = 1.8;
accuracy = 1;
if instance_exists(Player)
{
	accuracy = Player.accuracy;
	if Player.race=11
	{
		acc += 0.4;
		maxSpeed += 1;
	}
	if scrIsCrown(23)//Crown of speed
	{
		acc += 0.4;
		maxSpeed += 1;
	}
	if scrIsCrown(24)//Crown of sloth
	{
		acc -= 0.2;
		maxSpeed -= 1.5;
	}
}
acc = max(0.7,acc - accuracy);
mySound = snd_play(choose(sndTorpedoLinger1,sndTorpedoLinger2,sndTorpedoLinger3),
0,false,true,2,false,false,0.8,false,id);