if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
{
Player.clicked=0;


speed = max(22,speed + 6);
direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
scrRedirectFx();
turned=true;
}
}

image_angle=direction;

