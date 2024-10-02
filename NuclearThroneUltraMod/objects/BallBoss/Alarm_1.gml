///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if firstTime 
{
	firstTime = false;
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] += 70;
		scrGiveSnooze();
	}
}
if alarm[7] > 0 && my_health < targetHealth
	my_health += 1;
if target != noone {
	scrDrop(4,0);
	var ran = random(100);
	if ran > 90
	{
		event_user(0);
	}
	else if ran > 80
	{
		//Stop and turn
		repeat(2+irandom(2))
		with instance_create(x,y,Smoke)
		{
			motion_add(other.image_angle,1+random(2));
		}
		alarm[4] = 30;
	}
	else if ran > 70 && collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		//Line of fire
		event_user(1);
		alarm[1] = alarm[5] + actTime;
	}
	else if ran > 60 && (collision_line(x,y,target.x,target.y,Wall,0,0) < 0 || ran < 62)
	{
		//SPINNNIIIIINGG BULLEETS
		event_user(2);
	}
	else if ran > 50
	{
		scrDrop(16,0,true);
	}
	else if ran > 40
	{
		//Side attack
		event_user(3);
	}
	else if ran > 30
	{
		event_user(4);	
	}
	else if ran > 20 && reachLowHealth
	{
		event_user(5);
	}
}
else if random(10) < 1 {
    motion_add(random(360), 0.9)
}
if !reachHalfHealth && my_health < maxhealth * 0.74
{
	snd_play(sndBallBossHalfHP,0,false,false,3,false,false,1,false);
	waveSpeed += 0.5;
	lineOfFireOffset -= 5;
	reachHalfHealth = true;
	maxSpeed += 0.3;
	spinRate += 0.3;
	actTime -= 2;
	pSpeed += 0.3;
	spinAttackFireRate -= 4;
	spinAttackMaxAmmo ++;
	amountOfSpinBulletProjectiles += 2;
	event_user(0);
	myShield = instance_create(x,y,BallBossShield);
	myShield.x = x + lengthdir_x(shieldDistance,image_angle+90);
	myShield.y = y + lengthdir_y(shieldDistance,image_angle+90);
	var maxAm = 10;
	var am = 0;
	for (var i = 0; i < amountOfProjectiles; i++) {
		with myCompanions[i]
		{
			time = 0;
			startDistance = distance;
			targetDistance -= 32;
			if am < maxAm
			{
				var msk = mask_index;
				mask_index = mskCourtyardGuardian
				if !place_meeting(x,y,Wall) && place_meeting(x,y,Floor)
				{
					with instance_create(x,y,CourtyardGuardian) {
						alarm[1] *= 0.75;
						if instance_exists(Player) && Player.skill_got[29] {
							alarm[1] += 40;
							scrGiveSnooze();
						}
					}
					am ++;
				}
				mask_index = msk;
			}
		}
	}
}
else if !reachLowHealth && my_health < maxhealth * 0.35
{
	my_health += 100;
	lineOfFireOffset -=5;
	waveSpeed += 0.5;
	snd_play(sndBallBossLowHP,0,false,false,3,false,false,1,false);
	actTime -= 2;
	reachLowHealth = true;
	spinAttackFireRate -= 4;
	spinAttackMaxAmmo ++;
	maxSpeed += 0.25;
	spinRate -= 0.18;
	pSpeed += 0.9;
	amountOfSpinBulletProjectiles += 2;
	instance_create(x,y,PortalEnviromentReplacerVoid);
	with MusCont
	{
		audio_stop_sound(song);
		song = musChimera2;
		snd_loop(song);
		audio_sound_gain(song, clamp(UberCont.opt_musvol*1.05,0, 1), 0);
	}
	alarm[3] = 1;
	var maxAm = 10;
	var am = 0;
	for (var i = 0; i < amountOfProjectiles; i++) {
		with myCompanions[i]
		{
			time = 0;
			startDistance = distance;
			targetDistance -= 10;
			if am < maxAm
			{
				var msk = mask_index;
				mask_index = mskCourtyardGuardian
				if !place_meeting(x,y,Wall) && place_meeting(x,y,Floor)
				{
					with instance_create(x,y,InvertedCourtyardGuardian) {
						alarm[1] *= 0.75;
						if instance_exists(Player) && Player.skill_got[29] {
							alarm[1] += 40;
							scrGiveSnooze();
						}
					}
					am ++;
				}
				mask_index = msk;
			}
		}
	}
}
if point_distance(x,y,anchorX,anchorY) > 400
{
	targetDirection = point_direction(x,y,anchorX,anchorY)
	motion_add(targetDirection,1);
}
	
