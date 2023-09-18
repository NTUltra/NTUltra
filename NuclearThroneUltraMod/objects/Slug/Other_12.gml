/// @description WallHit
if speed > 6 {
	snd_play(sndShotgunHitWall,0.05,true,true,1,false,true,0.75);
}

Sleep(1)
//move_bounce_solid(true)
var maxSpeed = speed;
speed *= 0.8
speed += wallbounce
wallbounce *= 0.9
instance_create(x,y,Dust)

if speed > maxSpeed+1
	speed = maxSpeed+0.5;