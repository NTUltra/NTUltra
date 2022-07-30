/// @description CHARGE
direction = chargeDirection;
motion_add(chargeDirection,startSpeed);
speed = startSpeed;
var cd = chargeDuration+irandom(chargeDurationRandom);
alarm[1] = cd
walk = cd-10;
snd_play(sndJungleAssassinAttack);
