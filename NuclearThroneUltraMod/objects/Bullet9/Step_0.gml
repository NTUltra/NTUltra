image_angle = direction


if speed < 2 and sprite_index != sprBullet9Disappear
{
sprite_index = sprBullet9Disappear
image_index = 0
image_speed = 1
}
if instance_exists(Player){
if KeyCont.key_fire[Player.p] = 1 && turned=false && alarm[0]<1 || (Player.race=7 &&  KeyCont.key_spec[Player.p] = 1 && alarm[0]<1 && turned=false)
{
dmg=3;
alarm[1]=2;

speed+=8;
direction=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
scrRedirectFx();
turned=true;
}
}

