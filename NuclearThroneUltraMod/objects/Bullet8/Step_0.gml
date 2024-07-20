if instance_exists(Player){
	if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
	{
		Player.clicked=0;
		turned=true;
		dmg = 3;
		sprite_index = sprBullet8;
		if image_index < 3
		{
			image_index = 0;
			image_speed = 1;

			alarm[1]=2;


			speed+=12;
			speed = min(speed,26);
			direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
			scrRedirectFx();
		}
	}
}

image_angle=direction;

