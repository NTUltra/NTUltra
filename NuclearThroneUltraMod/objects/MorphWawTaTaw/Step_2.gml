/// @description Update
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
if owner > -1 && instance_exists(owner) {
	if owner.wep != mywep && ending == 0
	{
		event_perform(ev_alarm,0);
	}
	prevangle = image_angle;
	
	image_angle = point_direction(owner.x,owner.y,UberCont.mouse__x,UberCont.mouse__y);
	image_angle = scrAimAssistLaser(image_angle);
	direction = image_angle;
	x = owner.x + lengthdir_x(offset,image_angle);
	y = owner.y + lengthdir_y(offset,image_angle);
	hit = collision_line_point(x,y,
	x+lengthdir_x(300,image_angle),
	y+lengthdir_y(300,image_angle),
	Wall,true,true);
	BackCont.viewx2 = BackCont.viewx + lengthdir_x(camKick,image_angle+180)*UberCont.opt_shake
	BackCont.viewy2 = BackCont.viewy + lengthdir_y(camKick,image_angle+180)*UberCont.opt_shake
	BackCont.shake = max(BackCont.shake,camShake * UberCont.opt_shake);
	owner.wkick = wkick;
	
	if ending == 0
	{
		pitch += abs(angle_difference(image_angle,prevangle))*0.02;
		pitch = clamp(pitch - 0.1,0.9,1.3);
		if !audio_is_playing(sndWawTaTawLoop)
			snd_loop(sndWawTaTawLoop);
			//snd_play_2d(sndWawTaTawLoop,0,false,false,2,false,false,0.8,true,owner);
		if audio_is_playing(sndWawTaTawLoop)
			audio_sound_pitch(sndWawTaTawLoop,pitch);
	}
	targetX = hit[1];
	targetY = hit[2];
	var dis = point_distance(x,y,targetX,targetY);
	offsetX1 = x + lengthdir_x(dis*curvePart,direction) + lengthdir_x(curveAmount,direction + 90);
	offsetY1 = y + lengthdir_y(dis*curvePart,direction) + lengthdir_y(curveAmount,direction + 90);
	offsetX2 = x + lengthdir_x(dis*curvePart,direction) + lengthdir_x(curveAmount,direction - 90);
	offsetY2 = y + lengthdir_y(dis*curvePart,direction) + lengthdir_y(curveAmount,direction - 90);
	image_xscale = point_distance(x,y,targetX,targetY);
	image_yscale = (curveAmount * 0.5) + 1;
	if  ending > 0
	{
		curveAmount -= curveAmountDecrease * dt;
		if curveAmount < minCurveAmount
		{
			curveAmount = minCurveAmount
			if ending != 2
			{
			ending = 2;
				if audio_is_playing(sndWawTaTawLoop)
					audio_stop_sound(sndWawTaTawLoop);
				snd_play(sndWawTaTawEnd);
			}
		}
	}
	else
	{
		curveAmount += curveAmountIncrease * dt;
	}
	curvePart += curvePartIncrease;
	if curvePart > curvePartMax
	{
		curvePart = curvePartMax;
		curvePartIncrease *= -1;
	}
	else if curvePart < curvePartMin
	{
		curvePart = curvePartMin;
		curvePartIncrease *= -1;
	}
}