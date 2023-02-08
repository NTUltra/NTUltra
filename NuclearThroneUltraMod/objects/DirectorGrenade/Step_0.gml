/// @description Redirect
event_inherited();
if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[2]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[2]<1 && turned=false)
{
speed+=12;
direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
scrRedirectFx();
turned=true;
}
}