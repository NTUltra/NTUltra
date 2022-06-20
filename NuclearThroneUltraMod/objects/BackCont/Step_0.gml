var vw = __view_get( e__VW.WView, 0 )*0.5;
var vh = __view_get( e__VW.HView, 0 )*0.5;
if instance_exists(Player)
{
if !instance_exists(GenCont)
{
viewdist = 9

if Player.wep_type[Player.wep] = 0 or Player.wep_type[Player.wep] = 2
viewdist = 9

if Player.wep_type[Player.wep] = 3
viewdist = 8

if(Player.skill_got[19]){//EAGLE EYES
viewdist-=5;}

//if Player.my_health > 0
//{
viewx = ((Player.x-vw)*(viewdist-1)+(UberCont.mouse__x-vw))/viewdist
viewy = ((Player.y-vh)*(viewdist-1)+(UberCont.mouse__y-vh))/viewdist
//}
if (instance_exists(Tangle) or instance_exists(TangleSeed)) and mouse_check_button(mb_right) && Player.ultra_got[20]=0//stereo snares confusion
{
if instance_exists(TangleSeed)
{
if point_distance(Player.x,Player.y,TangleSeed.x,TangleSeed.y)>128
{
viewx = (((TangleSeed.x+Player.x*2)/3-vw)*(viewdist-1)+(UberCont.mouse__x-vw))/viewdist
viewy = (((TangleSeed.y+Player.y*2)/3-vh)*(viewdist-1)+(UberCont.mouse__y-vh))/viewdist
}
}
else
{
viewx = (((Tangle.x+Player.x*1.5)/2.5-vw)*(viewdist-1)+(UberCont.mouse__x-vw))/viewdist
viewy = (((Tangle.y+Player.y*1.5)/2.5-vh)*(viewdist-1)+(UberCont.mouse__y-vh))/viewdist
}
}
if instance_exists(NuclearThrone1)
{
	viewy -= 24;
	if instance_exists(NuclearThrone1)
	{
		viewx += (viewx - NuclearThrone1.x) * 0.1;
	}
}

/*if instance_exists(Portal)
{
//viewx = ((( (Portal.x) +Player.x*3)/4-view_wview/2)*(viewdist-1)+(UberCont.mouse__x-view_wview) )/viewdist//viewx = (((Portal.x+Player.x*3)/4-view_wview/2)*(viewdist-1)+(UberCont.mouse__x-view_wview/2))/viewdist
//viewy = ((( (Portal.y) +Player.y*3)/4-view_hview/2)*(viewdist-1)+(UberCont.mouse__y-view_hview) )/viewdist//viewy = (((Portal.y+Player.y*3)/4-view_hview/2)*(viewdist-1)+(UberCont.mouse__y-view_hview/2))/viewdist
//viewx = (((Portal.x+Player.x*3)/4-view_wview/2)*(viewdist-1)+(UberCont.mouse__x-view_wview/2))/viewdist

viewx = (((Player.x-view_wview/2)-((Player.x-Portal.x)*0.07))*(viewdist-1)+(UberCont.mouse__x-view_wview/2))/viewdist

viewy = (((Player.y-view_hview/2)-((Player.y-Portal.y)*0.07))*(viewdist-1)+(UberCont.mouse__y-view_hview/2))/viewdist

//viewy = (((Portal.y+Player.y*3)/4-view_hview/2)*(viewdist-1)+(UberCont.mouse__y-view_hview/2))/viewdist
}*/

if instance_exists(DramaCamera)
{
cam = instance_nearest(x,y,DramaCamera)
if instance_exists(cam) && cam.visible = 1
{
viewx = (viewx+cam.x*cam.urgent)/(1+cam.urgent)-vw
viewy = (viewy+cam.y*cam.urgent)/(1+cam.urgent)-vh
}
}
}
}


if instance_exists(Menu)
{
    if UberCont.race_have[Menu.race]
    {
    viewx2 = viewx2-(viewx2-(Menu.char[Menu.race].x-vw))*0.1
    viewy2 = viewy2-(viewy2-(Menu.char[Menu.race].y-vh))*0.1
    }
}
else
{
	var normalizationSpeed = 0.4 + (instance_number(YungCuzDupe)*0.1);
viewx2 = viewx2-(viewx2-viewx)*normalizationSpeed;
viewy2 = viewy2-(viewy2-viewy)*normalizationSpeed;
	if !instance_exists(DramaCamera) && instance_exists(Player)
	{
		//Always keep player on the screen
		viewx2 = clamp(viewx2,Player.x - (vw*2),Player.x);
		viewy2 = clamp(viewy2,Player.y - (vh*2),Player.y);
	}
}
if UberCont.opt_camera_follow==0
{
	if !instance_exists(DramaCamera) && instance_exists(Player)
	{
		viewx2 = prevviewx2 + (Player.x - vw - prevviewx2)*smoothing
		viewy2 = prevviewy2 + (Player.y - vh - prevviewy2)*smoothing
	}
	prevviewx2 = viewx2;
	prevviewy2 = viewy2;
}
if instance_exists(YungCuzDupe)
{
	shake /= instance_number(YungCuzDupe);
}
__view_set( e__VW.XView, 0, round(viewx2+(random(shake)-shake/2)*UberCont.opt_shake) );
__view_set( e__VW.YView, 0, round(viewy2+(random(shake)-shake/2)*UberCont.opt_shake) );

if shake > 10
shake *= 0.8
if shake > 0
shake -= 1
else
shake = 0

/* */
/*  */
