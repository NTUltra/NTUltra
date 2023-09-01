raddrop = 40
maxhealth = 600
scrBossHealthBuff();
meleedamage = 0
mySize = 2

event_inherited()
existTime = 10;
spr_idle = sprBossBotIdle;
spr_walk = sprBossBotWalk;
spr_hurt = sprBossBotHurt;
spr_dead = sprBossBotDead;
spr_fire = sprBossBotFire;
spr_actual_walk = spr_walk;
spr_actual_idle = spr_idle;
spr_charge = sprBossBotCharge;
spr_charge_hurt = sprBossBotChargeHurt;
spr_actual_hurt = spr_hurt;
spr_become_charge = sprBossBotBecomeBall;

snd_hurt = sndBossBotHit
snd_dead = sndBossBotDead
snd_melee = sndBowlingBallDissapear;
//behavior
walk = 0
firstEntry = true;
fireDelay = 27;
wkick = 0
bwkick = 0;
projectileSpeed = 1.5;
acc = 0.8;
maxSpeed = 2.5;
actTime = 55;
alarm[0] = 30;
wallDir = 0;
wallLength = 42;
gunangle = 0;
bowlingDuration = 60;
alarm[1] = bowlingDuration + 10;
bowlingAcc = 2;
bowlingMaxSpeed = 8;
rotation = 0;
bowlingDamage = 5;
reload = 0;
maxReload = 6;
fireSecondary = false;
right = image_xscale;
justCharged = true;
instance_create(x,y,BigWallBreak);
wepspr = sprGoldShotgun;
if instance_exists(Player)
{
	var d = point_direction(x,y,Player.x,Player.y);
	direction = d + choose(60,-60);
}
else
	direction = random(360);
alarm[6] = bowlingDuration;
event_user(1);