/// @description El boom boom
snd_play(sndExplosion);
x += lengthdir_x(stepRange,theDirection);
y += lengthdir_y(stepRange,theDirection);
instance_create(x,y,Explosion)
amount --;
if amount > 0
{
	alarm[0] = 2;
}
else
{
	instance_destroy();	
}
