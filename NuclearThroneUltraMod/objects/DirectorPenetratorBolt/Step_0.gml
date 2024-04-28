/// @description Change direction
if instance_exists(Player){
	if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
	{
		Player.clicked=0;
		turned=true;
		speed += 14;
		direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		image_angle = direction;
		sprite_index = sprPenetratorBolt;
		image_index = 1;
		image_speed = 0;
		scrRedirectFx();
		//Clear hitEntities
		hitEntities = [];
		alarm[2] = 0;
	}
}