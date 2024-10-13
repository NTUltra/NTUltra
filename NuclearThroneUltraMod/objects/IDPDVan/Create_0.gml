raddrop = 0
maxhealth = 255
if GetPlayerLoops() < 1
	maxhealth = 200;
mySize = 4
RogueIDPD=false;
scrCrownOfPopoRad(15);
event_inherited()
meleedamage = 20
myGateway = noone;
ignoreOverlap = true;
scrAddDrops(2);
depth  = 0;
team=0;
spr_idle = sprVanOpen
spr_walk = sprVanDrive
spr_hurt = sprVanHurt
spr_dead = sprVanDead
existTime = 21;

snd_hurt = sndVanHurt

//behavior
walk = 0
loops = GetPlayerLoops();
idle=true;
right = 1;
acc = 9 + min(8,loops);
maxSpeed = 12 + min (4, loops - 1);
dropFreaks = false;
myMovementDirection = 0;
if loops > 2
{
	alarm[2] = 2;	
}
/*
if instance_exists(Player) && object_index != IDPDVanVertical
{
if Player.x>x//right
{right=1
motion_add(0,8);
}
else//left
{right=-1;
motion_add(180,8);}

}*/
friction=4;
alarm[3]=45;

