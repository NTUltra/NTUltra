/// @description CHARGE
direction = chargeDirection;
motion_add(chargeDirection,startSpeed);
speed = startSpeed;
var cd = chargeDuration+irandom(chargeDurationRandom);
alarm[1] = cd+14
walk = cd-14;
snd_play(sndJungleAssassinAttack);
