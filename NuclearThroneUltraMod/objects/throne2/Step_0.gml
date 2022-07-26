event_inherited()
audio_emitter_position(emitter,x,y,depth);
if target > 0 && crossAmmo < 1
{
	var lerpp = lp;
	x += ((target.x + lengthdir_x(distanceToTarget,angle))-x)*lerpp;
	y += ((target.y + lengthdir_y(distanceToTarget,angle))-y)*lerpp;
	if alarm[6] < 1 && !place_meeting(x,y,Tangle) && alarm[11] < 1
		angle += rotationSpeed; 
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
if speed > 3
speed = 3;
if !instance_exists(Player) && sndtaunt = 0
{
	tauntdelay += 1
	if tauntdelay > 50
	{
		snd_play_2d(sndNothing2Taunt);
		sndtaunt = 1
	}
}