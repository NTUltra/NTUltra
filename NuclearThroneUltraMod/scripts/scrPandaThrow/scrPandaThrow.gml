///scrPandaThrow();
// /@description
///@param
function scrPandaThrow(){
	var thrownWep = noone;
	if curse=0 && wep!=0
	{
		with PlayerAlarms2
		{
			alarm[7] = 11;
		}
		//snd_play_2d(sndEnemySlash);
		snd_play_2d(sndChickenThrow);

		thrownWep = instance_create(x,y,ThrowWep);
		with thrownWep
		{
			reload = other.reload;
			debug(reload);
			alarm[0] = 70;
			if other.skill_got[5] =1//thronebutt
				alarm[0]=50;//return to hand
			//alarm[0] += floor(other.wep_load[other.wep] * 0.125);
			team=other.team;
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),16);
			if other.skill_got[20]
				speed += 6;
			if collision_line(x,y,x+hspeed,y+vspeed,Wall,false,false)
			{
				speed *= -0.8;	
			}
			scrWeapons()
			if other.ultra_got[54]=1
			{
				if UberCont.useSeed
				{
					random_set_seed(UberCont.pandaRan * 10);
					UberCont.pandaRan += 69;
				}
				//if wep_area[other.wep]==-1//handling starting weapons
				//wep_area[other.wep]=1 THE LOOPHOLE
    			//primary
				var prevwep=other.wep;
    
				do {wep = round(random(maxwep-1)+1)}
				until (wep_area[wep] == wep_area[prevwep] && wep != 298 && wep != 373)
				scrAddNewWeaponDrop(wep, true);
				curse = other.curse
				wepmod1=other.wepmod1;
				wepmod2=other.wepmod2;
				wepmod3=other.wepmod3;
				wepmod4=other.wepmod4;
				isPermanent = other.isPermanent;
				visitedPortals = other.visitedPortals;
				hasBeenEaten = other.hasBeenEaten;
    
			}
			else{
				wep=other.wep;
			}
			name = wep_name[wep]
			//ammo = 50
			type = wep_type[wep]
			curse = other.curse
			wepmod1=other.wepmod1;
			wepmod2=other.wepmod2;
			wepmod3=other.wepmod3;
			wepmod4=other.wepmod4;
			isPermanent = other.isPermanent;
			visitedPortals = other.visitedPortals;
			hasBeenEaten = other.hasBeenEaten;
			sprite_index = wep_sprt[wep]
		}
		BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		BackCont.shake += 1
		scrSwapWeps()
		bwep = 0
	}
	return thrownWep;
}