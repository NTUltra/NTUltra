if(morphMe == 0){

	myCorpse = instance_create(x,y,MovingCorpse)

	with myCorpse
	{
		skidScale = min(4,(max(2,(other.bbox_right - other.bbox_left - 1))*0.5)/6);
		mySize = other.mySize
		mask_index = other.mask_index
		if other.speed > 0
		{
			motion_add(other.direction,other.speed)
			if other.my_health != 0
				speed += max(0,-other.my_health/5)
		}
		sprite_index = other.spr_dead
		image_xscale = other.right

		
		if speed > 16
			speed = 16
		if instance_exists(Player)
		{
			var impactWrist = false;
			if Player.ultra_got[52] == 1
				speed += 2;
			if Player.skill_got[20] == 1
			{
				impactWrist = true;
				alarm[0] = 2;
				speed = max(speed+7.3,8.3)//9.3
				if Player.race=25
					speed += 1.2;
			}
			else if speed > 17
			speed = 17
			if mySize > 0
			{
				if impactWrist
				{
					speed /= (mySize*0.35);
				}
				else
					speed /= mySize*0.82;
			}
			
			if Player.skill_got[20] && speed > 18
				speed = 18
		}
		else if mySize > 0
			speed /= mySize*0.83
	}
	snd_play(snd_dead, 0.1,true);
}
else if morphMe != 6
{
	instance_create(x,y,PortalChecker);
	if morphMe == 2
	{
		instance_create(x,y,ExplosiveSheep);
	    //Unlock sheep
	    scrUnlockCharacter(13,"FOR MORPHING AN ENEMY");
	} else if morphMe == 3
	{
		instance_create(x,y,UltraSheep);
	    //Unlock sheep
	    scrUnlockCharacter(13,"FOR MORPHING AN ENEMY");	
	} else if morphMe == 4
	{
		instance_create(x,y,GoldSheep);
	    //Unlock sheep
	    scrUnlockCharacter(13,"FOR MORPHING AN ENEMY");	
	}
	else 
	{
		instance_create(x,y,Sheep);
	    //Unlock sheep
	    scrUnlockCharacter(13,"FOR MORPHING AN ENEMY");	
	} 
}

//Sleep(15+mySize*10)
//Mutations
scrEnemyDeathEvent();

if totemBuffed
{
	scrDrop(22,2);
}
if super {
	snd_play(sndNothingFire);
	with instance_create(x,y,SquarePool)
	{
		speed = 0;
		image_angle = 0;
		team = other.team;
	}	
}