if (hasNoMenuOpen())
{

//skin = UberCont.skin
if UberCont.skin[race]=1 && UberCont.race_bskin[race]=1
	UberCont.skin[race]=skin;
else if UberCont.skin[race]=2 && UberCont.race_cskin[race]=1
	UberCont.skin[race]=skin;
else if UberCont.skin[race]=3 && UberCont.race_dskin[race]=1
	UberCont.skin[race]=skin;
else if UberCont.skin[race]=4 && UberCont.race_eskin[race]=1
	UberCont.skin[race]=skin;
else if UberCont.skin[race]=5 && UberCont.race_fskin[race]=1
	UberCont.skin[race]=skin;
else
	UberCont.skin[race] = 0;

//standard weapon
if wep = 0
	UberCont.start_wep[0] = race_swep[Menu.race];

//Set the starting weapon
if wep == -1
{
	UberCont.selected_start_wep[race] = -1;
}
else if UberCont.start_wep_have[wep,race] == 1
{
	UberCont.cwep[race]=UberCont.start_wep[wep];
	UberCont.selected_start_wep[race] = wep;
}
var xo = 0;
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	xo = 108;
var spacebar = keyboard_check_pressed(vk_space);
if race != 0 && (spacebar || UberCont.mouse__x > __view_get( e__VW.XView, 0 )+xo+300-10 and UberCont.mouse__x < __view_get( e__VW.XView, 0 )+xo+300+12 and UberCont.mouse__y > __view_get( e__VW.YView, 0 )+arrowOpenerY-12 and UberCont.mouse__y < __view_get( e__VW.YView, 0 )+arrowOpenerY+10)
{
    wepopenscale=1.5;
    
    if spacebar || mouse_check_button_pressed(mb_left)
    {
        if (wepmenuopen) {
			snd_play_2d(sndClickBack);
            wepmenuopen = false;
			ultraOpen = false;
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
		skin++
		if skin > 2
		{
			//Secret skins
			while (
				(!UberCont.race_dskin[race] && skin == 3) ||
				(!UberCont.race_eskin[race] && skin == 4) ||
				(!UberCont.race_fskin[race] && skin == 5)
			)
			{
				skin++
			}
			if skin > 5
				skin = 0
		}

		if skin == 1 && UberCont.race_bskin[race]
			UberCont.skin[race] = skin;
		else if skin == 2 && UberCont.race_cskin[race]
			UberCont.skin[race] = skin;
		else if skin == 3 && UberCont.race_dskin[race]
			UberCont.skin[race] = skin;
		else if skin == 4 && UberCont.race_eskin[race]
			UberCont.skin[race] = skin;
		else if skin == 5 && UberCont.race_fskin[race]
			UberCont.skin[race] = skin;
		else if skin == 0
			UberCont.skin[race] = 0;
		else 
			UberCont.skin[race] = skin;
		
		snd_play_2d(choose(sndMenuASkin,sndMenuBSkin));
	}

	with UberCont
		scrSave();

}
else
scale=1;

if race != 0 && UberCont.mouse__x > sx-24 - 24 and UberCont.mouse__x < sx - 24 and UberCont.mouse__y > __view_get( e__VW.YView, 0 )+60-12 and UberCont.mouse__y < __view_get( e__VW.YView, 0 )+60+12
{
	ultraScale=1.4;

	if mouse_check_button_pressed(mb_left)
	{
		snd_play_2d(choose(sndMenuASkin,sndMenuBSkin));
		ultraOpen = !ultraOpen;
	}

}
else
	ultraScale = 1;

}
sx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-sxo;
imageIndex += 0.5;
