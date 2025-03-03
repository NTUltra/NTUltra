raddrop = 19
maxhealth = 160
mySize = 4;

event_inherited()
meleedamage = 6;

spr_normal = sprDogGuardianWalk;
spr_idle = sprDogGuardianWalk
spr_walk = sprDogGuardianWalk
spr_hurt = sprDogGuardianHurt
spr_dead = sprDogGuardianDead
spr_fire = sprDogGuardianCharge;
spr_jump_up = sprDogGuardianJumpUp;
spr_jump_down = sprDogGuardianJumpDown;
//These are to stop iframes during jump
spr_chrg = spr_jump_up;
fire = false;
charge = false;
jumpUp = false;
jumpDown = false;
jumpDir = 0;
//behavior
walk = 1
alarm[1] = 30+random(90)
friction = 1;
snd_hurt = sndDogGuardianHurt;
snd_dead = sndDogGuardianDead;
snd_melee = sndDogGuardianMelee;
justjumped = false;
instance_create(x,y,BigWallBreak);
scrAddDrops(1);

actTime = 12;
maxSpeed = 2;
maxJumpSpeed = 7.9;
jumpAcc = 0.5;
jumpDuration = 5.75;
loops = GetPlayerLoops();
if loops > 0
{
	jumpDuration += 1;
	actTime = 9;
	maxJumpSpeed = 8.5;
	jumpAcc = 0.6;
}