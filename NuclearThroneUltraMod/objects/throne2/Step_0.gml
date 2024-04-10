event_inherited()
if (audio_emitter_exists(emitter))
	audio_emitter_position(emitter,x,y,depth);
if instance_exists(Player) && crossAmmo < 1
{
	var lerpp = lp;
	x += ((Player.x + lengthdir_x(distanceToTarget,angle))-x)*lerpp;
	y += ((Player.y + lengthdir_y(distanceToTarget,angle))-y)*lerpp;
	hspeed = x - xprevious;
	vspeed = y - yprevious;
	
	if alarm[6] < 1 && !place_meeting(x,y,Tangle) && alarm[11] < 1
	{
		angle += rotationSpeed;
		if (UberCont.normalGameSpeed == 60)
		{
			angle -= rotationSpeed*0.5;
		}
	}
	if Player.x < x
		right = -1
	else if Player.x > x
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