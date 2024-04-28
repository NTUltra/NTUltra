/// @description Redirect
if instance_exists(Player){
	if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
	{
		sprite_index = sprPlayerUltraDirectorRifleSplitBullet
		dmg -= 4;
		Player.clicked=0;
		turned = true;
		turnRate = 0;
		direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		image_angle = direction;
		scrRedirectFx();
		speed = min(20,speed + 12);
	}
}