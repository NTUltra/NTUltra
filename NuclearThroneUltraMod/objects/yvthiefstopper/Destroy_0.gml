scrDrop(100,100)

event_inherited()
//COPY PASTE MOST ENEMY CODE
myCorpse = instance_create(x,y,Corpse)
with myCorpse
{
	mySize = other.mySize
	mask_index = other.mask_index
	if other.speed > 0
	{
		motion_add(other.direction,other.speed)
		speed += max(0,-other.my_health/5)
	}
	sprite_index = other.spr_dead
	image_xscale = other.right

		
	if speed > 17
		speed = 17
	if instance_exists(Player)
	{
		var impactWrist = false;
		if Player.ultra_got[52] == 1
			speed += 2;
		if Player.skill_got[20] == 1
		{
			impactWrist = true;
			alarm[0] = 2;
			speed = max(speed+8,9)//9.3
			if Player.race=25
				speed+=1.24;
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
			
		if Player.skill_got[20] == 1 && speed > 19
			speed = 19
	}
	else if mySize > 0
		speed /= mySize*0.82
}
snd_play(snd_dead, 0.1,true);