/// @description Blink
image_index += 1;
alarm[3] = blinkTime;
blinkTime = max(blinkTime - 1, 1);
if sticky == 1 && stickTarget != noone && instance_exists(stickTarget)
	with stickTarget
	{
		speed *= 0.5;
	}