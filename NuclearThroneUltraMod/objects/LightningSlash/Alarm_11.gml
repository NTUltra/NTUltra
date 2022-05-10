/// @description Some lightning why not

// Inherit the parent event
event_inherited();
var xx = x + lengthdir_x(32,image_angle);
var yy = y + lengthdir_y(32,image_angle);
snd_play(choose(sndSpark1,sndSpark2),0.1,true);
with instance_create(xx,yy,Lightning)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(30)-15)
team = other.team
ammo = 10
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}
