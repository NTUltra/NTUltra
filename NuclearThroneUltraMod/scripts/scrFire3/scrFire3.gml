///scrFire3();
// /@description its more guns
///@param
function scrFire3(hasTailNow){
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	switch(wep)
	{//here we go again! again!

		//RAPIER
		case 791:
			snd_play_fire(choose(sndSword1,sndSword2))
			instance_create(x,y,Dust)
			with instance_create(x+lengthdir_x(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(4+((Player.skill_got[13]+bettermelee)*20),aimDirection),RapierShank)
			{
			longarms = 0
	
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,3.5+longarms)
			image_angle = direction
			team = other.team}

			wepangle = -wepangle
			if !skill_got[2]
			{
				motion_add(aimDirection,7)
				scrMoveContactSolid(aimDirection,2)
			}
			BackCont.viewx2 += lengthdir_x(18,aimDirection)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(18,aimDirection)*UberCont.opt_shake
			BackCont.shake += 1
			wkick = -6
		break;
	}
}