if(instance_exists(Player)){
    
    
	if other.team = Player.team || other.object_index=Disc || other.object_index=ToxicThrowerGas
	{
		//WEAPON MODS!
		scrModHit();
		scrSheepHit();
		//Sedatives
		if Player.ultra_got[100] && team != other.team
		{
			target = -1;
			walk = 0;
			var amount = 1;
			if Player.reload > 0
			{
				amount = Player.reload * 0.6;
				if Player.skill_got[5]
					var amount = Player.reload * 0.8;
				else
					var amount = Player.reload * 0.6;
			}
			
			if alarm[1] > 0 && my_health > 0
			{
				alarm[1] += amount;
				instance_create(x,y-6,SleepFX);
			}
		}
		
		//ROIDS KNOCKBACK
		//Need to actually get hit some enemies kill themselves (maggot nest)
		if Player.ultra_got[26]
		{
			BackCont.shake += 2
			var shithead = id;
			var s = 8;
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
				var s = target.size;
				if s == 4
					s = 5;
				pushX = target.x + lengthdir_x(pushStrength/max(1,s*0.5),pushDirection);
				pushY = target.y + lengthdir_y(pushStrength/max(1,s*0.5),pushDirection);
			}
		}
	}    
   
 
}

