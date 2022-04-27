///scrYVPower();
// /@description
///@param
function scrYVPower(){
	if race = 6 and can_shoot = 1
	{
		if !scrMeleeWeapons()//wep_type[wep] != 0&&wep!=239//no melleee allowed sorry and no rocket puncher thing lol I have to update this soon
		{
			if ammo[wep_type[wep]] < wep_cost[wep]*(2+Player.skill_got[5]*2) and KeyCont.key_spec[p] = 1 and wep_type[wep] != 0
			scrEmpty()

			if rad-(wep_rad[wep]*(2+Player.skill_got[5]*2))<0
			{//not enough radiation
			clicked = 0
			scrEmptyRad();
			other.wkick = -2
			}

			if ammo[wep_type[wep]] >= wep_cost[wep]*(2+Player.skill_got[5]*2) and rad>=wep_rad[wep]*(2+Player.skill_got[5]*2)
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


			if Player.ultra_got[24]=1//YV ULTRA D
			{
			scrSwapWeps()
			//I should check if its a melee weapon again but I think its a really cool combo so nah leave the "bug" in
			if ammo[wep_type[wep]] >= wep_cost[wep]*(2+Player.skill_got[5]*2) and rad>=wep_rad[bwep]*(2+Player.skill_got[5]*2)// Check ammo of our secondary wep
			{

			    if (2>random(wep_cost[wep]*0.7) )//the random value less likely when the other weapons cost is a lot
			    {
			    repeat(2+Player.skill_got[5]*2)
			        {
			        scrFire()
			        can_shoot = 1}
			    can_shoot = 0
    
			    reload *= 1.9+Player.skill_got[5]*1.4//added reload time
			    }
			}
			scrSwapWeps()

			if Player.skill_got[5] = 1{
			snd_play_2d(sndPopPopUpg);}
			else
			snd_play_2d(sndPopPop)

			}
			reload *= 1.9+Player.skill_got[5]*1.4//added reload time
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,4)
			BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))
			BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))
			BackCont.shake += 1}


		}
		else if !audio_is_playing(sndMutant6No)
		{
			snd_play_2d(sndMutant6No);	
		}
	}
}