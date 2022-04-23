/// @description Init
alarm[1] = 1;
target = -1;
creator = -1;
lerpTime = 0;
lerpCalc = 0.16;
lerpCalcBack = 0.16;
dmg = 2;
image_speed = 0.4;
snd_play_2d(sndHandThrow);
snd_loop(sndHandThrowLoop);
team = 2;
touchpointX = x;
touchpointY = y;
push = false;
pushDirection = 0;
pushX = 0;
pushY = 0;
pushStartX = 0;
pushStartY = 0;
pushStrength = 96;
if instance_exists(Player) && Player.skill_got[5] || true
{
	dmg = 4;
	push = true;
	lerpCalcBack = 0.18;
}
