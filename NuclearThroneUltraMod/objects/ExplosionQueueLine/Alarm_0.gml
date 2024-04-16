/// @description El boom boom
snd_play(sndExplosion,0,false,true,false,false,true,0.7);
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
