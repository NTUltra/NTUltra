if (hasNoMenuOpen())
{

//skin = UberCont.skin
if UberCont.skin[race]=1 && UberCont.race_bskin[race]=1
UberCont.skin[race]=skin;
else if UberCont.skin[race]=2 && UberCont.race_cskin[race]=1
UberCont.skin[race]=skin;
else
UberCont.skin[race]=0;

//standard weapon
if wep = 0
	UberCont.start_wep[0] = race_swep[Menu.race];

//Set the starting weapon
if UberCont.start_wep_have[wep,race] == 1
{
	UberCont.cwep[race]=UberCont.start_wep[wep];
	UberCont.selected_start_wep[race] = wep;
}

if race != 0 && UberCont.mouse__x > __view_get( e__VW.XView, 0 )+300-10 and UberCont.mouse__x < __view_get( e__VW.XView, 0 )+300+12 and UberCont.mouse__y > __view_get( e__VW.YView, 0 )+arrowOpenerY-12 and UberCont.mouse__y < __view_get( e__VW.YView, 0 )+arrowOpenerY+10
{
    wepopenscale=1.5;
    
    if mouse_check_button_pressed(mb_left)
    {
        if (wepmenuopen) {
			snd_play_2d(sndClickBack);
            wepmenuopen = false;
			crownIcons = [];
			/*
			with CrownIcon
				instance_destroy();
				
			with CharSelect
				visible = true;
				*/
        } else {
			snd_play_2d(sndClick);
            wepmenuopen = true;
			//BackCont.viewx2 = (Menu.char[Menu.race].x-__view_get( e__VW.WView, 0 )/2);
			//BackCont.viewy2 = (Menu.char[Menu.race].y-__view_get( e__VW.HView, 0 )/2);
			/*
			var dir = 0
			repeat(crownmax+1)
			{
			if dir<10
			{crownIcons[dir] = instance_create(__view_get( e__VW.XView, 0 )+18+dir*32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-50,CrownIcon)//24
			with crownIcons[dir]
				crown = dir
			}
			else
			{crownIcons[dir] = instance_create(__view_get( e__VW.XView, 0 )+18+(dir-9)*32,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16,CrownIcon)//24
			with crownIcons[dir]
				crown = dir
			}
			dir += 1}
			with CharSelect
				visible = false;*/
        }
    }
} else {
    wepopenscale=1;
}
/*
if wepmenuopen
{
	var dir = 0
		repeat(crownmax+1)
		{
		if dir<10
		{
			crownIcons[dir].x=__view_get( e__VW.XView, 0 )+18+dir*32;
			crownIcons[dir].y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-50
		}
		else
		{
			crownIcons[dir].x=__view_get( e__VW.XView, 0 )+18+(dir-9)*32;
			crownIcons[dir].y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16
		}
		dir += 1}	
}
*/
//SKIN-------------------------------------------______________________

if race != 0 && UberCont.mouse__x > sx-24 and UberCont.mouse__x < sx and UberCont.mouse__y > __view_get( e__VW.YView, 0 )+60-12 and UberCont.mouse__y < __view_get( e__VW.YView, 0 )+60+12
{
	scale=1.4;

	if mouse_check_button_pressed(mb_left)
	{
	/*
	if UberCont.race_bskin[race]=1&&UberCont.race_cskin[race]=1//you have a bskin and a cskin for this character
	{
	skin++
	if skin>2
	skin=0
	}
	else if UberCont.race_bskin[race]=1//you have a skin for this character
	{

	skin++
	if skin>1
	skin=0



	}
	else//you have no new skins
	{
	skin=0;
	}*/

		skin++
		if skin>2
		skin=0

		if skin=1 && UberCont.race_bskin[race]=1
			UberCont.skin[race]=skin;
		else if skin=2 && UberCont.race_cskin[race]=1
			UberCont.skin[race]=skin;
		else
			UberCont.skin[race]=0;
		
		snd_play_2d(choose(sndMenuASkin,sndMenuBSkin));
	}

	with UberCont
	scrSave();

}
else
scale=1;

}
sx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-135;
imageIndex += 0.5;
