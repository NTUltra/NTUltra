/// @description Big Damage
// Inherit the parent event
event_inherited();
dmg = 45;
hitEntities = [];
image_speed = 0.4;
alarm[0] = 2;
boomTime = 8;
alarm[1] = boomTime - 2;
alarm[4] = boomTime + (boomTime*0.5);
alarm[2] = 60;
alarm[3] = 1;
friction = 0.4;
snd_play(choose(sndHappy1,sndHappy2,sndHappy3,sndHappy4,sndHappy5,sndHappy6),0.01
,false,true,3,false,false,0.8,false,id);