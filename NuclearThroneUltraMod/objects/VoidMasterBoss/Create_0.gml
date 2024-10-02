raddrop = 0
maxhealth = 800
meleedamage = 0
mySize = 4

event_inherited()
team = 5;
canFly = true;
spr_idle = sprVoidMasterIdle
spr_walk = sprVoidMasterWalk
spr_hurt = sprVoidMasterHurt
spr_dead = sprVoidMasterDead
spr_charge = sprVoidMasterDashEnd;

snd_hurt = sndVoidSuck
snd_dead = sndVoidCreepEnd

//behavior
walk = 0
gunangle = random(360);
wepangle = choose(-140,140)
wepflip = 1
alarm[1] = 5;
wkick = 0
actTime = 17;
tellTime = 28;
alarm[6] = 10;
acc = 0.4;
maxSpeed = 1.5;
aboutToDashSpeed = 0.8;
firstEntry = true;
targetX = x;
targetY = y;
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 40;
	scrGiveSnooze();
}