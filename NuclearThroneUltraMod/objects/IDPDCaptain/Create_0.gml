raddrop = 2
maxhealth = 1600;
scrBossHealthBuff();
meleedamage = 0
mySize = 1

event_inherited()

team = 3;

spr_idle = sprLastIdle
spr_walk = sprLastIdle
spr_hurt = sprLastHurt
spr_dead = sprLastDeath
spr_chrg_start = sprLastDashStart;
spr_chrg = sprLastDash;
spr_chrg_end = sprLastDashEnd;
spr_fire = sprLastSpin;
spr_warp_in = sprLastWarpIn;
spr_warp_out = sprLastWarpOut;

snd_hurt = sndLastHurt
snd_dead = sndLastDeath
snd_melee_charge = sndLastMeleeCharge;
snd_melee_strike = sndLastMelee;

snd_pattern_1 = sndLastPattern1;
snd_pattern_2 = sndLastPattern2;
snd_tp = sndLastTeleport;
snd_tp_shoot = sndLastTeleportShoot;

snd_low_hp = sndLastLowHP;
snd_intro = sndLastIntro;

forceAnimationSprite = spr_idle;
forceAnimationIndex = 0;
forceAnimationEnd = 0;
forceAnimation = false;
//behavior
meleeAttackDamage = 10;
dashDuration = 8;
dashSpeed = 12.4;
dashExtraTell = 3;
walk = 0
gunangle = random(360);
alarm[1] = 5;
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 60;
	scrGiveSnooze();
}
firstEntry = true;
wkick = 0
actTime = 6;

acc = 1;
maxSpeed = 3.5;

ammo = 0;