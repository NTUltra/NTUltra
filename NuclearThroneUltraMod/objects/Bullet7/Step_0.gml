image_angle = direction


if speed < 3 and sprite_index != sprBullet7Disappear
{
sprite_index = sprBullet7Disappear
image_index = 0
image_speed = 0.4
}
if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
{

//snd_play(sndDirector);


alarm[1]=2;


speed+=12;
direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
scrRedirectFx();
turned=true;
}
}

