raddrop = 9
maxhealth = 255
meleedamage = 20
mySize = 4
RogueIDPD=false;
scrCrownOfPopoRad(15);
event_inherited()
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
acc = 9 + min(16,loops);
maxSpeed = 12;
dropFreaks = false;
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

