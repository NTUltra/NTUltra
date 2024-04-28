/// @description Redirectw
if instance_exists(Player){
	if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
	{
		Player.clicked=0;
		turned = true;
		hitEntities = [];
		dmg -= 4;
		sprite_index = sprPlayerUltraDirectorRifleBullet;
		with instance_create(x,y,UltraDirectorRifleSplitBullet)
		{
			speed = max(2,other.speed - 2);
			direction = other.direction;
			image_angle = direction;
			turnRate = 0;
		}
		with instance_create(x,y,UltraDirectorRifleSplitBullet)
		{
			speed = max(2,other.speed - 2);
			direction = other.direction + 90;
			image_angle = direction;
			turnRate = 0.7;
		}
		with instance_create(x,y,UltraDirectorRifleSplitBullet)
		{
			speed = max(2,other.speed - 2);
			direction = other.direction - 90;
			image_angle = direction;
			turnRate = -0.7;
		}
		direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		image_angle = direction;
		BackCont.shake += 10;
		instance_create(x,y,Smoke);
		snd_play(sndUltraDirect,0.01,true,true,2,false,false,1);
		if !instance_exists(RedirectFX)
		{
			with instance_create(x,y,RedirectFX)
			{
				image_angle = other.direction;
			}
		}
		
		speed = min(20,speed + 12);
	}
}