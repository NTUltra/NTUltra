/// @description REDIRECT
event_inherited();
if instance_exists(Player){
	if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
	{
		speed+=12;
		maxSpeed += 10;
		hitShrink -= 0.1;
		acc += 5;
		direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		snd_play(sndPlasmaHit,0.1,true)
		with instance_create(x,y,PlasmaImpact)
		{
			sprite_index = sprRedirectorPlasmaImpact;
			scrCopyWeaponMod(other);
		}
		scrRedirectFx();

		nomscale += 0.2;
		image_xscale=nomscale
		image_yscale=nomscale
		turned=true;
		dmg += 2;
		image_angle = direction;

	}
}
