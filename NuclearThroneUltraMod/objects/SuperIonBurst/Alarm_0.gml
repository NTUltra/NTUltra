ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
//FIRING
snd_play(sndLaserCannonUpg,0.1,true)



with instance_create(UberCont.mouse__x+random(64)-32,UberCont.mouse__y+random(64)-32,PlasmaFX)
{motion_add(random(360),2+random(8))
image_speed-=0.1;}

repeat(4){
with instance_create(UberCont.mouse__x+random(64)-32,UberCont.mouse__y+random(64)-32,IonImpact){
team = other.team
}/*
with instance_create(UberCont.mouse__x+random(64)-32,UberCont.mouse__y+random(64)-32,MiniPlasmaImpact){
team = other.team
}*/
}


BackCont.shake += 4
creator.wkick = 6
}


if ammo <= 0
{
	endx = UberCont.mouse__x;
	endy = UberCont.mouse__y;
	alarm[2] = 5;
	alarm[0] = 0;
}

