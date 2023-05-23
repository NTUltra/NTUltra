/// @description Bounce
instance_create(x+hspeed,y+vspeed,SmallExplosion);
move_bounce_solid(false);
snd_play(sndExplosionS,0.1,true);
with instance_create(x,y,Smoke)
 depth = other.depth + 1;
hits--;
if hits < 0
		instance_destroy();