/// @description Shuffle position
if alarm[2] > 0
	alarm[3] = 1;
collisionX += lengthdir_x(leftOverSpeed,direction + 180);
collisionY += lengthdir_y(leftOverSpeed,direction + 180);
x = collisionX + random_range(-hammerShake,hammerShake);
y = collisionY + random_range(-hammerShake,hammerShake);
hammerShake += 0.75;
leftOverSpeed *= 0.8;