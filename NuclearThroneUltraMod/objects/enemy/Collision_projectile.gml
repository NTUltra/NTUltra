if(instance_exists(Player)){
    
    
	if other.team != team //|| other.object_index==Disc || other.object_index==ToxicThrowerGas
	{
		//WEAPON MODS!
		scrModHit();
		//Sedatives
		if Player.ultra_got[100] && team != other.team && my_health > 0
		{
			target = -1;
			walk = 0;
			var amount = 1.25;
			var backupAmount = 1.25;
			if other.wepFire != 0
				amount = Player.wep_load[other.wepFire];
			if Player.skill_got[5]
			{
				amount *= 1.05;
				backupAmount = 2;
			}
			else
				amount *= 0.8;
			other.wepFire = 0;
			if alarm[1] > 0
			{
				if alarm[1] < amount * 2
				{
					alarm[1] += amount;
					alarm[11] += amount;
				} else
				{
					alarm[1] += backupAmount;
				}
				with instance_create(x,y-6,SleepFX) {
					depth = other.depth - 1;
					alarm[0] = max(2,amount+1);
				}
			}
		}
		
		//ROIDS KNOCKBACK
		//Need to actually get hit some enemies kill themselves (maggot nest)
		if Player.ultra_got[26]
		{
			BackCont.shake += 2
			var shithead = id;
			var s = 6;
			with Player
			{
				var al = 6;//weapon types total
				var unequippedAmmoPercentage = 0;
				for (var i = 1; i < al; i++) {
					unequippedAmmoPercentage += ammo[i] / typ_amax[i];
				}
				if skill_got[10] //BACK MUSCLE
					unequippedAmmoPercentage *= 1.4;
			}
			s += (unequippedAmmoPercentage*4);
			var d = point_direction(x,y,Player.x,Player.y) + 180;
			var md = other.direction;
			if !other.canBeMoved
				md = other.image_angle;
			d = md + (angle_difference(md,d)*0.5);
			with instance_create(x,y,Knockback)
			{
				target = shithead;
				pushStrength = s;
				pushDirection = d;
				pushStartX = target.x;
				pushStartY = target.y;
				var s = target.mySize;
				if s == 4
					s = 5;
				pushX = target.x + lengthdir_x(pushStrength/max(1,s*0.5),pushDirection);
				pushY = target.y + lengthdir_y(pushStrength/max(1,s*0.5),pushDirection);
			}
		}
	}    
   
 
}

