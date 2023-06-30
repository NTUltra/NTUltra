ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play(sndToxicBoltGas,0.1,true);

repeat(3)
with instance_create(UberCont.mouse__x,UberCont.mouse__y,ToxicThrowerGas)
{
motion_add(random(360),0.1+random(1))
scrCopyWeaponMod(other);
}


BackCont.shake += 3
creator.wkick = 6
}


if ammo <= 0
{
	endx = UberCont.mouse__x;
	endy = UberCont.mouse__y;
	alarm[2] = 5;
	alarm[0] = 0;
}

