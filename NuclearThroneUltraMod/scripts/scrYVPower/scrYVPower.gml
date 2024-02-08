///scrYVPower();
// /@description
///@param
function scrYVPower(){
	if race = 6 and can_shoot = 1
	{
		poppop = true;
		var isMelee = scrMeleeWeapons(wep);
		if altUltra && ultra_got[23]
			isMelee = !isMelee;
		if !isMelee
		{
			if ammo[wep_type[wep]] < wep_cost[wep]*(2/*+Player.skill_got[5]*2*/) and KeyCont.key_spec[p] = 1 and wep_type[wep] != 0
				scrEmpty()

			if rad-(wep_rad[wep]*(2+Player.skill_got[5]*2))<0
			{//not enough radiation
			clicked = 0
			scrEmptyRad();
			other.wkick = -2
			}

			if ammo[wep_type[wep]] >= wep_cost[wep]*(2/*+Player.skill_got[5]*2*/) and rad>=wep_rad[wep]*(2+Player.skill_got[5]*2)
			{
			    if (Player.level>9){
			    repeat(2+(Player.skill_got[5]+Player.ultra_got[22])*(1+Player.skill_got[5]))//ULTRA B
			    {
    
			    scrFire()
			    can_shoot = 1}
    
			    ammo[wep_type[wep]]+=((Player.ultra_got[22]*Player.skill_got[5])+Player.ultra_got[22])*wep_cost[wep]//Return ammo for ultra (2*ifThronebutt)
			    }
			    else{
			    repeat(2+Player.skill_got[5]*2)
			    {
			    scrFire()
			    can_shoot = 1}
			    }
			can_shoot = 0

			if Player.skill_got[5] = 1{
			snd_play_2d(sndPopPopUpg);}
			else
			snd_play_2d(sndPopPop)


			if Player.ultra_got[24] && !Player.altUltra//YV ULTRA D
			{
				scrSwapWeps()
				if reload <= 0 && !scrMeleeWeapons(wep)
				{
					if ammo[wep_type[wep]] >= wep_cost[wep]*(2+Player.skill_got[5]*2) and rad>=wep_rad[wep]*(2+Player.skill_got[5]*2)// Check ammo of our secondary wep
					{
						if Player.canSecondaryPop
						{
							repeat(2+Player.skill_got[5]*2 + Player.ultra_got[22])
						    {
								scrFire()
								can_shoot = 1
							}
							can_shoot = 0
							reload += wep_load[wep]*(0.95+(Player.skill_got[5]*1.7))//added reload time
						}
						Player.canSecondaryPop = !Player.canSecondaryPop;	
					}
				}
				scrSwapWeps()
			}
			reload += wep_load[wep]*(0.9+(Player.skill_got[5]*1.7))//added reload time
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,4)
			BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))
			BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))
			BackCont.shake += 1}


		}
		else if !audio_is_playing(sndMutant6No)
		{
			snd_play_2d(sndMutant6No);	
		}
		poppop = false;
	}
}