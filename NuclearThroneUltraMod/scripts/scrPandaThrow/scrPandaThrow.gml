///scrPandaThrow();
// /@description
///@param
function scrPandaThrow(){
	if curse=0 && wep!=0
	{
		with PlayerAlarms2
		{
			alarm[7] = 11;
		}
		//snd_play_2d(sndEnemySlash);
		snd_play_2d(sndChickenThrow);

		with instance_create(x,y,ThrowWep)
		{
			team=other.team;
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),16);
			scrWeapons()
			if other.ultra_got[54]=1
			{
				//primary
				var prevwep;
    
				//if wep_area[other.wep]==-1//handling starting weapons
				//wep_area[other.wep]=1 THE LOOPHOLE
    
				prevwep=other.wep;
    
				do {wep = round(random(maxwep-1)+1)}
				until (wep_area[wep] == wep_area[prevwep] && wep != 298 && wep != 373)
				
				curse = other.curse
				wepmod1=other.wepmod1;
				wepmod2=other.wepmod2;
				wepmod3=other.wepmod3;
				wepmod4=other.wepmod4;
    
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
			sprite_index = wep_sprt[wep]
		}
		BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		BackCont.shake += 1
		scrSwapWeps()
		bwep = 0
	}
}