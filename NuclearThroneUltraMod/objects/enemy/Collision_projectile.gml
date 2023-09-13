if(instance_exists(Player)) {
	if other.team != team
	{
		//WEAPON MODS!
		scrModHit();
		//Sedatives
		var wp = other.wepFire;
		if Player.ultra_got[100] && team != other.team && my_health > 0 && wp != -1
		{
			target = -1;
			walk = 0;
			var amount = 1;
			if wp != 0
				amount = Player.wep_load[wp]*0.45;
			if Player.skill_got[5]
			{
				amount *= 1.2;
			}
			with projectile
			{
				if wepFire == wp
					wepFire = -1;
			}
			other.wepFire = 0;
			if alarm[1] > 0
			{
				speed *= 0.8;
				alarm[1] += amount;
				alarm[11] += amount;
				with instance_create(x,y-6,SleepFX) {
					depth = other.depth - 1;
					alarm[0] = max(2,amount+1);
				}
			}
		}
		
		//ROIDS KNOCKBACK
		//Need to actually get hit some enemies kill themselves (maggot nest)
		if Player.ultra_got[26] && gettingKnocked < 1
		{
			gettingKnocked = 5;
			BackCont.shake += 2
			var shithead = id;
			var s = 2;
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
				var si = target.mySize;
				if si == 4
					si = 5;
				pushStrength = pushStrength/max(1,si*0.5);
				pushStrength = min(pushStrength,48);
				pushX = target.x + lengthdir_x(pushStrength,pushDirection);
				pushY = target.y + lengthdir_y(pushStrength,pushDirection);
			}
		}
	}    
}

