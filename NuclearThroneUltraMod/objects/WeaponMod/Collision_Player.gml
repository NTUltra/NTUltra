
if KeyCont.key_pick[Player.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	//get your weapon mod 
	if other.wep!=0{
	with Player{

	/*
	if ( wepmod1!=0&&wepmod2!=0&&wepmod3!=0&& (skill_got[30]==0||wepmod4!=0) ){
	other.name="CAN'T BE MODIFIED#ALREADY FULLY MODDED";
	other.alarm[1]=40;
	exit;
	}*/

	//unlock weapon smith
	scrUnlockCharacter(17,"FOR MODDING A WEAPON")

	///store the data into this object
	other.wep=wep;
	other.name=wep_name[wep];
	other.type=wep_type[wep]
	other.curse=curse;
	other.wepmod1=wepmod1;
	other.wepmod2=wepmod2;
	other.wepmod3=wepmod3;
	other.wepmod4=wepmod4;

	snd_play(snd_thrn);

	    Sleep(100);
	    //BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    //BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	    BackCont.shake += 10
    
    
	    if ultra_got[31]&&cwep!=0{//robot 3 weps A B C
	scrSwapWeps()// B C A
	cwep=0; // B C x
	}
	else{
	scrSwapWeps()
	bwep = 0}

    

	}
	//show_message("RECEIVED: "+string(wepmod1)+string(wepmod2)+string(wepmod3) );


	alarm[0]=120;
	image_speed=0.4;
	mask_index=mskPickupThroughWall;

	with WeaponMod
	{
		image_speed=0.4;
		mask_index=mskPickupThroughWall;}

		repeat(4)
		instance_create(x,y,Smoke)
	}
}


